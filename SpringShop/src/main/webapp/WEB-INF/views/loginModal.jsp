<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

        <!-- The Modal -->
        <div class="modal" id="myLoginModal">
            <div class="modal-dialog">
                <div class="modal-content">
                <form action="login" method="POST">
                    <!-- Modal Header -->
                    <div class="modal-header text-center">
                        <h4 class="modal-title text-primary">Login Page</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <!-- 창닫기 버튼 처리 -->
                    </div>

                    <!-- Modal body -->
                    <div class="modal-body">
                        <div class="row m-3">
                            <div class="col-md-3 text-right">
                                <label for="userid">아이디</label>
                            </div>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="userid" id="userId" placeholder="User Id"
                                autofocus="autofocus">
                            </div>
                        </div>
                        <div class="row m-3">
                            <div class="col-md-3 text-right">
                                <label for="userPwd text-right">비밀번호</label>
                            </div>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="pwd" id="userPwd" placeholder="Password">
                            </div>
                        </div>

                        <div class="row m-3">
                            <div class="col-md-12 text-right form-check">
                                <label class="form-check-label">
                                    <input type="checkbox"
                                     class="form-check-input" name="saveId"
                                     id="saveId"> 아이디 저장
                                </label>
                            </div>
                        </div>

                    </div>

                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button class="btn btn-success">로그인</button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    </div>
                </form>
                <!-- form end -------------- -->
                </div>
            </div>
        </div>
    