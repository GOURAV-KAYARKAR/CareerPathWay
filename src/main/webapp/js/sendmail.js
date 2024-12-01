(function () {
  emailjs.init("bRvFAlhUIBkli3HS6"); // Replace "YOUR_USER_ID" with your EmailJS user ID

  document.getElementById("contact-form").addEventListener("submit", function (event) {
    event.preventDefault();

    // Fetch the recipient's email address from the text field
    const recipientEmail = document.getElementById("contact-email").value;

    // Fetch other form data
    const subject = document.getElementById("contact-company").value;
    const message = document.getElementById("contact-message").value;

    // Send email using EmailJS
    emailjs
      .send("service_op1c4bd", "template_az50arx", {
        to_email: recipientEmail,
        from_email: "rajatwankhede124@gmail.com",
        subject: subject,
        message: message,
      })
      .then(
        function (response) {
          console.log("Email sent:", response);
          showSuccessToast("Email sent successfully!");
          // Reset form fields after successful submission
          document.getElementById("contact-form").reset();
        },
        function (error) {
          console.error("Email sending failed:", error);
          showErrorToast("Failed to send email. Please try again later.");
        }
      );
  });

  // Function to show success toast
  function showSuccessToast(message) {
    const toast = document.getElementById("success-toast");
    toast.textContent = message;
    toast.classList.add("show");
    setTimeout(function () {
      toast.classList.remove("show");
    }, 3000); // Hide after 3 seconds
  }

  // Function to show error toast
  function showErrorToast(message) {
    const toast = document.getElementById("error-toast");
    toast.textContent = message;
    toast.classList.add("show");
    setTimeout(function () {
      toast.classList.remove("show");
    }, 3000); // Hide after 3 seconds
  }
})();
