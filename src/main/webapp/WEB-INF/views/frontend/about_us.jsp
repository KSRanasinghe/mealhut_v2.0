<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout" %>

<layout:extends name="base_content">
  <layout:put block="content">

    <!-- About Us Section -->
    <section class="about-section">
      <div class="container">

        <div class="row row-cols-1 g-5">
          <div class="col">
            <!-- Card -->
            <div class="card shadow px-1">
              <div class="card-body">

                <div class="col-12 mt-3 pb-1">
                  <h4 class="card-title text-uppercase fw-semibold text-dark text-center">about us</h4>
                  <hr class="col-12" />
                </div>

                <div class="col-12 justify-content-center">
                  <div class="row">

                    <p class="form-text about">Welcome to MealHut Lanka (PVT).Ltd, your number one
                      source for all delighted meals. We're dedicated to giving you the very best of
                      meals, with a focus on superior taste, convenient and affordable prices, and
                      on-demand supply.</p>
                    <p class="form-text about">Founded in 2005 by R.L.K.S.Ranasinghe, MealHut Lanka
                      (PVT).Ltd has been on a very successful journey from where our Gampaha branch is
                      today. Accordingly, our company currently has 4 branches, and you can see those
                      outlets in the cities of Gampaha, Kadawatha, Kiribathgoda, and Colombo.</p>
                    <p class="form-text about">When R.L.K.S.Ranasinghe first started out, his passion
                      for make meals drove him to do lots of research on new tasting food, so that
                      MealHut Lanka (PVT).Ltd can offer you meals with a taste unique to us. We now
                      serve customers at all over above-mentioned places, and are thrilled that we're
                      able to turn our passion into our own website.</p>
                    <p class="form-text about">We hope you enjoy our meals as much as we enjoy offering
                      them to you. If you have any questions or comments, please don't hesitate to
                      <a href="${BASE_URL}contact-us" style="text-decoration: none;">contact us</a>.
                    </p>

                    <span class="form-text about">Sincerely,</span>
                    <p class="form-text about">Group of MealHut Lanka (PVT).Ltd</p>
                  </div>
                </div>

              </div>
            </div>
            <!-- Card -->
          </div>
          <div class="col">
            <div class="row row-cols-1 row-cols-md-2 g-5">
              <div class="col">
                <div class="card shadow">
                  <img src="assets/images/app/founder.jpg" class="card-img-top img-thumbnail" />
                  <div class="card-body">
                    <span class="text-dark fs-5">Founder of MealHut Lanka (PVT).Ltd</span>
                    <br />
                    <span class="form-text text-capitalize">mr.r.l.k.s.ranasinghe</span>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card shadow">
                  <img src="assets/images/app/cheef.jpg" class="card-img-top img-thumbnail" />
                  <div class="card-body">
                    <span class="text-dark fs-5">Cheef chef of MealHut Lanka (PVT).Ltd</span>
                    <br />
                    <span class="form-text text-capitalize">mr.s.d.jayasooriya</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>
    </section>

  </layout:put>
</layout:extends>
