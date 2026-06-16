<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Confirm Payment</title>

    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #f2f6fc;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .card {
            background: white;
            width: 420px;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.15);
            animation: fadeIn 0.4s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to   { opacity: 1; transform: translateY(0); }
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 10px;
        }

        .details p {
            font-size: 16px;
            margin: 8px 0;
            color: #444;
        }

        .details strong {
            color: #000;
        }

        .amount-box {
            background: #f8fbff;
            border-left: 4px solid #007bff;
            padding: 12px;
            margin: 18px 0;
            border-radius: 8px;
            font-size: 18px;
            color: #000;
        }

        button {
            width: 100%;
            padding: 12px;
            background: #007bff;
            border: none;
            color: white;
            font-size: 18px;
            cursor: pointer;
            border-radius: 8px;
            margin-top: 10px;
            transition: 0.3s;
        }

        button:hover {
            background: #0056b3;
        }

        .footer-text {
            margin-top: 15px;
            text-align: center;
            font-size: 13px;
            color: #666;
        }
    </style>

</head>
<body>

<div class="card">
    <h2>Confirm Your Booking</h2>

    <div class="details">
        <p><strong>Name:</strong> ${fullName}</p>
        <p><strong>Email:</strong> ${email}</p>
        <p><strong>WhatsApp:</strong> ${whatsapp}</p>
        <p><strong>Tour:</strong> ${tourName}</p>
    </div>

    <div class="amount-box">
        <strong>Total Amount:</strong> 20,000
    </div>

    <form action="/pay" method="post">
        <input type="hidden" name="amount" value="20000">
        <input type="hidden" name="currency" value="${currency}">
        <input type="hidden" name="method" value="${method}">
        <input type="hidden" name="intent" value="${intent}">
        <input type="hidden" name="description" value="${description}">

        <button type="submit">Proceed to Pay</button>
    </form>

    <p class="footer-text">You will be redirected to PayPal to complete your payment.</p>
</div>

</body>
</html>
