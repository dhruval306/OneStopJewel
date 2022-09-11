<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style type="text/css">
  .a {
    float: left;
  }
  .b {
    text-align: center;
  }
  .table-condensed {
    font-size: 12px;
  }
</style>

<div class="wrapper">
  <div class="container-fluid">
    <div class="row">
      <div class="col-12">
        <div class="page-title-box">
          <div class="page-title-right">
            <ol class="breadcrumb m-0">
              <li class="breadcrumb-item">
                <a href="javascript: void(0);">UBold</a>
              </li>
              <li class="breadcrumb-item">
                <a href="javascript: void(0);">Sales</a>
              </li>
              <li class="breadcrumb-item active">Sales Party</li>
            </ol>
          </div>
          <h4 class="page-title"></h4>
        </div>
      </div>
    </div>

    <!-- end row -->

    <div class="row">
      <div class="col-12">
        <div class="row">
          <div class="col-lg-8"></div>
          <div class="col-lg-4">
            <div class="text-lg-right mt-3 mt-lg-0">
              <button
                style="
                  background-color: #5a6268;
                  color: white;
                  padding: 5px;
                  border-radius: 13px;
                "
                type="button"
                class="btn btn-light btn-sm waves-effect col-4"
                data-toggle="modal"
                data-target="#full-width-modal"
              >
                Add New
              </button>
            </div>
          </div>
          <!-- end col-->
        </div>
        <!-- end row -->
      </div>
      <!-- end col-->
    </div>

    <div class="row">
      <c:forEach items="${partydata }" var="s" varStatus="count">
        <div class="col-lg-4">
          <div class="text-center card-box">
            <div class="pt-2 pb-2">
              <h4 class="mt-2 text-uppercase">
                <a href="extras-profile.html" class="text-dark"
                  >${s.party_name }</a
                >
              </h4>
              <h6 class="text-muted text-left mt-3">
                @ <span>Role | </span>
                <span> <a href="#" class="text-pink">${s.type }</a> </span>
              </h6>
              <h6 class="text-muted text-left mt-1">
                @ <span>Phone Number | </span>
                <span>
                  <a href="#" class="text-pink">${s.mobilenumber }</a>
                </span>
              </h6>
              <h6 class="text-muted text-left mt-1 mb-2">
                @ <span>Whatsapp Number | </span>
                <span> <a href="#" class="text-pink">${s.wpnumber }</a> </span>
              </h6>
              <h6 class="text-muted text-left mt-1 mb-2">
                @ <span>Email | </span>
                <span> <a href="#" class="text-pink">${s.email }</a> </span>
              </h6>

              <div id="accordion" class="m-0">
                <div class="m-0" id="heading${s.party_name}">
                  <h5 class="mt-3 text-center">
                    <a
                      class="text-dark"
                      data-toggle="collapse"
                      href="#collapse${s.party_name}"
                      aria-expanded="false"
                    >
                      More Info.
                    </a>
                  </h5>
                </div>
                <div
                  id="collapse${s.party_name}"
                  class="collapse"
                  aria-labelledby="collapse${s.party_name}"
                  data-parent="#accordion"
                >
                  <div class="card-body">
                    <div class="table-responsive m-0">
                      <table
                        class="table table-bordered table-condensed table-centered mb-0"
                      >
                        <!-- <thead class="thead-light">
                                        <tr>
                                            <th>#</th>
                                            <th>Normal Rate</th>
                                            <th>Suplier Rate</th>
                                            
                                        </tr>
                                    </thead> -->
                        <tbody>
                          <tr>
                            <td>Cash(Rs.)</td>
                            <td>${s.cash }</td>
                            <td>${s.rs}</td>
                          </tr>
                          <tr>
                            <td>Gold(gm)</td>
                            <td>${s.gold }</td>
                            <td>${s.gold_gm}</td>
                          </tr>
                          <tr>
                            <td>Silver(gm)</td>
                            <td>${s.silver }</td>
                            <td>${s.silver_gm}</td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- end .padding -->
          </div>
          <!-- end card-box-->
        </div>
        <!-- end col -->
      </c:forEach>
    </div>
  </div>
</div>

<div
  id="full-width-modal"
  class="modal fade"
  tabindex="-1"
  role="dialog"
  aria-labelledby="full-width-modalLabel"
  aria-hidden="true"
  style="display: none"
>
  <div class="modal-dialog modal-full">
    <form:form modelAttribute="spartydata">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title" id="full-width-modalLabel">
            Add Sales Party
          </h4>
          <button
            type="button"
            class="close"
            data-dismiss="modal"
            aria-hidden="true"
          >
            �
          </button>
        </div>
        <div class="modal-body">
          <label class="header-title">Sales Party Info.</label>
          <div class="row">
            <div class="col-12 mb-3">
              <div class="a col-3 mb-3">
                <label>Sales Party Name</label>
                <form:input
                  path="party_name"
                  class="form-control"
                  required="required"
                  placeholder="Enter Name..."
                />
              </div>
              <div class="a col-3 mb-3">
                <label>Phone Number</label>
                <form:input
                  path="mobilenumber"
                  class="form-control"
                  placeholder="Enter Number..."
                />
              </div>
              <div class="a col-3 mb-3">
                <label>Watsapp number</label>
                <form:input
                  path="wpnumber"
                  class="form-control"
                  placeholder="Enter Number..."
                />
              </div>
              <div class="a col-3 mb-3">
                <label>Email</label>
                <form:input
                  path="email"
                  class="form-control"
                  placeholder="Enter email Address..."
                />
              </div>
            </div>

            <div class="col-12 mb-3">
              <div class="a col-3 mb-3">
                <label>Country</label>
                <form:select path="co.country_id" class="form-control">
                  <option disabled="disabled" value="0" selected="selected">
                    select Country
                  </option>
                  <c:forEach items="${countrydata }" var="s">
                    <form:option value="${s.country_id }"
                      >${s.country_name }</form:option
                    >
                  </c:forEach>
                </form:select>
              </div>
              <div class="a col-3 mb-3">
                <label>State</label>
                <form:select path="st.state_id" class="form-control">
                  <option disabled="disabled" value="0" selected="selected">
                    select State
                  </option>
                  <c:forEach items="${statedata }" var="s">
                    <form:option value="${s.state_id }"
                      >${s.state_name }</form:option
                    >
                  </c:forEach>
                </form:select>
              </div>
              <div class="a col-3 mb-3">
                <label>City</label>
                <form:select path="ct.city_id" class="form-control">
                  <option disabled="disabled" value="0" selected="selected">
                    select City
                  </option>
                  <c:forEach items="${citydata }" var="s">
                    <form:option value="${s.city_id }"
                      >${s.city_name }</form:option
                    >
                  </c:forEach>
                </form:select>
              </div>
              <div class="a col-3 mb-3">
                <label>Pin-Code</label>
                <form:input
                  path="pincode"
                  class="form-control"
                  placeholder="Enter Pincode..."
                />
              </div>
            </div>

            <div class="col-12 mb-3">
              <div class="a col-6 mb-3">
                <label> Permenant Address:-</label>
                <form:textarea
                  path="address"
                  class="form-control"
                  rows="4"
                ></form:textarea>
              </div>
              <div class="a col-3 mb-3">
                <label>Birth Date:</label>
                <form:input
                  path="date"
                  id="basic-datepicker"
                  class="form-control"
                  placeholder=""
                />
              </div>
              <div class="a col-3 mb-3">
                <label>Type/Category</label>
                <form:select path="type" class="form-control">
                  <option disabled="disabled" value="0" selected="selected">
                    Select
                  </option>
                  <form:option value="normal">Normal</form:option>
                  <form:option value="supplier">Supplier</form:option>
                  <form:option value="retailer">Retailer</form:option>
                </form:select>
              </div>
            </div>

            <div class="col-12 mb-3">
              <div class="a col-6 mb-2">
                <label>Payment Method:</label>

                <form:select path="method" class="form-control">
                  <form:option value="all">All</form:option>
                  <form:option value="cash">Cash Payment</form:option>
                  <form:option value="online">Online Payment</form:option>
                </form:select>
              </div>
            </div>

            <div class="col-12 mb-2">
              <div class="a b col-3 mb-3">
                <label>Type</label>
              </div>
              <div class="a b col-4 mb-3">
                <label>Take/Give</label>
              </div>
              <div class="a b col-4 mb-3">
                <label>Balance</label>
              </div>
            </div>

            <div class="col-12 mb-3">
              <div class="a b col-3 mb-3">
                <label>Gold</label>
              </div>
              <div class="a col-4 mb-3">
                <form:select path="gold" id="gcheck" class="form-control">
                  <option disabled="disabled" value="0" selected="selected">
                    Select
                  </option>
                  <form:option value="take">Take</form:option>
                  <form:option value="give">Give</form:option>
                </form:select>
              </div>
              <div class="a col-4 mb-3 input-group-prepend">
                <span class="input-group-text" id="basic-addon1">gm</span>
                <form:input
                  path="gold_gm"
                  onclick="check('g')"
                  class="form-control"
                  placeholder="Enter Balance for Gold"
                  aria-label="Username"
                  aria-describedby="basic-addon1"
                />
              </div>
            </div>

            <div class="col-12 mb-3">
              <div class="a b col-3 mb-3">
                <label>Silver</label>
              </div>
              <div class="a b col-4 mb-3">
                <form:select path="silver" id="scheck" class="form-control">
                  <option disabled="disabled" value="0" selected="selected">
                    Select
                  </option>
                  <form:option value="take">Take</form:option>
                  <form:option value="give">Give</form:option>
                </form:select>
              </div>
              <div class="a b col-4 mb-3 input-group-prepend">
                <span class="input-group-text" id="basic-addon1">gm</span>
                <form:input
                  path="silver_gm"
                  onclick="check('s')"
                  class="form-control"
                  placeholder="Enter Balance for Gold"
                  aria-label="Username"
                  aria-describedby="basic-addon1"
                />
              </div>
            </div>

            <div class="col-12 mb-3">
              <div class="a b col-3 mb-3">
                <label>Cash</label>
              </div>
              <div class="a b col-4 mb-3">
                <form:select path="cash" id="ccheck" class="form-control">
                  <option disabled="disabled" value="0" selected="selected">
                    Select
                  </option>
                  <form:option value="take">Take</form:option>
                  <form:option value="give">Give</form:option>
                </form:select>
              </div>
              <div class="a b col-4 mb-3 input-group-prepend">
                <span class="input-group-text" id="basic-addon1">rs</span>
                <form:input
                  path="rs"
                  onclick="check('c')"
                  class="form-control"
                  required="required"
                  placeholder="Enter Balance for Gold"
                  aria-label="Username"
                  aria-describedby="basic-addon1"
                />
              </div>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button
            type="button"
            class="btn btn-secondary waves-effect"
            data-dismiss="modal"
          >
            Close
          </button>
          <form:button class="btn btn-primary waves-effect waves-light"
            >Save</form:button
          >
        </div>
      </div>
      <!-- /.modal-content -->
    </form:form>
  </div>
  <!-- /.modal-dialog -->
</div>
<!-- /.modal -->
<script type="text/javascript">
  function check(b) {
    var a = document.getElementById("" + b + "check").value;

    if (a == 0) {
      $("#sa-error").click();
    }
  }
</script>
