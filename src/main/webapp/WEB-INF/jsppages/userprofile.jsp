 <div class="wrapper">
            <div class="container-fluid">

                <!-- start page title -->
                <div class="row">
                    <div class="col-12">
                        <div class="page-title-box">
                            <div class="page-title-right">
                                <ol class="breadcrumb m-0">
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">UBold</a></li>
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">My Account</a></li>
                                    <li class="breadcrumb-item active">User Profile</li>
                                </ol>
                            </div>
                            <h4 class="page-title">User Profile</h4>
                        </div>
                    </div>
                </div>
                <!-- end page title -->

                
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-8 col-lg-6 col-xl-8">
                        <div class="card bg-pattern">

                            
                        <div class="card-box text-center">
                            <img src="upload/${sessionScope.image}"  class="rounded-circle avatar-lg img-thumbnail"
                                alt="profile-image">

                            <h4 class="mb-0"> ${sessionScope.username} </h4>
                            <p class="text-muted">Role:- ${sessionScope.role} </p>

                            <button type="button" class="btn btn-success btn-xs waves-effect mb-2 waves-light">Follow</button>
                            <button type="button" class="btn btn-danger btn-xs waves-effect mb-2 waves-light">Message</button>

                            <div class="text-left mt-3">
                                
                                <p class="text-muted mb-2 font-15"><strong>User Id :</strong> <span class="ml-2">100434${sessionScope.id} </span></p>
                                
                                <p class="text-muted mb-2 font-15"><strong>Full Name :</strong> <span class="ml-2"> ${sessionScope.name} </span></p>

                                <p class="text-muted mb-2 font-15"><strong>Mobile :</strong><span class="ml-2">${sessionScope.number}</span></p>

                                <p class="text-muted mb-2 font-15"><strong>Email :</strong> <span class="ml-2 "> ${sessionScope.email} </span></p>

                                <p class="text-muted mb-1 font-15"><strong>Gender :</strong> <span class="ml-2">${sessionScope.gender}</span></p>
                            	
                            	<p class="text-muted mb-2 font-15"><strong>Address :</strong> <span class="ml-2"> ${sessionScope.address} </span></p>
                            </div>

                            
                        </div> <!-- end card-box -->
                        </div>
                        </div>
                        </div>
                        </div>
                        </div>
                        </div>
                        
                        
                        