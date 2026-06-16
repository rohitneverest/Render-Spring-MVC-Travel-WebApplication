package com.example.travelease.controller;

import com.example.travelease.service.PaypalService;
import com.paypal.api.payments.Links;
import com.paypal.api.payments.Payment;
import com.paypal.base.rest.PayPalRESTException;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequiredArgsConstructor
public class PaymentController {

    private final PaypalService service;

    // STEP 1: Show Payment Page After Booking
    @PostMapping("/payment")
    public String showPaymentPage(
            @RequestParam String fullName,
            @RequestParam String email,
            @RequestParam String whatsapp,
            @RequestParam String tourName,


            @RequestParam String currency,
            @RequestParam String method,
            @RequestParam String intent,
            @RequestParam String description,

            Model model
    ) {

        // Pass values to JSP
        model.addAttribute("fullName", fullName);
        model.addAttribute("email", email);
        model.addAttribute("whatsapp", whatsapp);
        model.addAttribute("tourName", tourName);


        model.addAttribute("currency", currency);
        model.addAttribute("method", method);
        model.addAttribute("intent", intent);
        model.addAttribute("description", description);

        return "PaymentGateway/payment"; // payment.jsp
    }


    // STEP 2: Call PayPal API
    @PostMapping("/pay")
    public String pay(
            @RequestParam double amount,
            @RequestParam String currency,
            @RequestParam String method,
            @RequestParam String intent,
            @RequestParam String description
    ) {
        try {
            String successUrl = "http://localhost:8080/pay/success";
            String cancelUrl = "http://localhost:8080/pay/cancel";

            Payment payment = service.createPayment(
                    amount, currency, method, intent,
                    description, cancelUrl, successUrl
            );

            for (Links link : payment.getLinks()) {
                if (link.getRel().equals("approval_url")) {
                    return "redirect:" + link.getHref();
                }
            }

        } catch (PayPalRESTException e) {
            e.printStackTrace();
        }

        return "redirect:/";
    }


    // STEP 3: PayPal Success
    @GetMapping("/pay/success")
    public String success(
            @RequestParam("paymentId") String paymentId,
            @RequestParam("PayerID") String payerId
    ) {
        try {
            Payment payment = service.executePayment(paymentId, payerId);
            if ("approved".equals(payment.getState())) {
                return "PaymentGateway/paySuccess";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "PaymentGateway/payCancel";
    }

    // STEP 4: PayPal Cancel
    @GetMapping("/pay/cancel")
    public String cancel() {
        return "PaymentGateway/payCancel";
    }
}
