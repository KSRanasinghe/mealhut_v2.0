<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout" %>

<layout:extends name="base_content">
  <layout:put block="content">

    <!-- Privacy Section -->
    <section class="privacy-section">
      <div class="container">

        <!-- Card -->
        <div class="card shadow px-1">
          <div class="card-body">

            <div class="col-12 title-box">
              <h4 class="card-title text-uppercase fw-semibold text-dark text-center">Privacy Policy</h4>
            </div>
            <hr />

            <div class="col-12 justify-content-center">
              <div class="row">

                <span class="text-dark fw-bold fs-5">Privacy Policy for MealHut</span>

                <p class="form-text about">At mealhut, accessible from <a href="${BASE_URL}"
                                                                          class="link-primary">www.mealhut.lk</a>, one of our main priorities is the privacy
                  of our visitors. This Privacy Policy document contains types of information that is
                  collected and recorded by mealhut and how we use it.</p>

                <p class="form-text about">If you have additional questions or require more information
                  about our Privacy Policy, do not hesitate to contact us.</p>

                <p class="form-text about">This Privacy Policy applies only to our online activities and is
                  valid for visitors to our website with regards to the information that they shared
                  and/or collect in mealhut. This policy is not applicable to any information collected
                  offline or via channels other than this website.</p>

                <span class="text-dark fw-bold fs-5">Consent</span>

                <p class="form-text about">By using our website, you hereby consent to our Privacy Policy
                  and agree to its terms.</p>

                <span class="text-dark fw-bold fs-5">Information we collect</span>

                <p class="form-text about">The personal information that you are asked to provide, and the
                  reasons why you are asked to provide it, will be made clear to you at the point we ask
                  you to provide your personal information.</p>
                <p class="form-text about">If you contact us directly, we may receive additional information
                  about you such as your name, email address, phone number, the contents of the message
                  and/or attachments you may send us, and any other information you may choose to provide.
                </p>
                <p class="form-text about">When you register for an Account, we may ask for your contact
                  information, including items such as name, company name, address, email address, and
                  telephone number.</p>

                <h2 class="text-dark fw-bold fs-5">How we use your information</h2>

                <p class="form-text about">We use the information we collect in various ways, including to:
                </p>

                <div class="offset-1 col-10">
                  <div class="row">
                    <ul class="form-text about">
                      <li class="pb-1">Provide, operate, and maintain our website;</li>
                      <li class="pb-1">Improve, personalize, and expand our website;</li>
                      <li class="pb-1">Understand and analyze how you use our website;</li>
                      <li class="pb-1">Develop new products, services, features, and functionality;
                      </li>
                      <li class="pb-1">Communicate with you, either directly or through one of our
                        partners, including for customer service, to provide you with updates and
                        other information relating to the website, and for marketing and promotional
                        purposes;</li>
                      <li class="pb-1">Send you emails;</li>
                      <li class="pb-1">Find and prevent fraud.</li>
                    </ul>
                  </div>
                </div>

              </div>
            </div>

          </div>
        </div>
        <!-- Card -->

      </div>
    </section>

  </layout:put>
</layout:extends>

