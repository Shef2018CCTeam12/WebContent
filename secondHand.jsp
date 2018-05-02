<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
    <!DOCTYPE html>
    <html lang="en" xmlns="http://www.w3.org/1999/xhtml">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <head>
        <title>Sheffield CouldBase</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
            <%@ include  file="./mainJs_css.jsp"%>
            <script type="text/javascript" src="./scripts/pagination.js"></script>
            
    </head>

    <body>
        <%@ include  file="./header.jsp"%>
            <div class="subtitle">
                <p>Second Hand Market</p>
            </div>
            <div class="second-hand">
                <div class="my-goods">
                    <div class="my-goods-tittle">
                        <h2>My goods</h2>
                    </div>
                    <div class="my-goods-list">

                        <div class="goodsGrid">
                            <div class="goodsPhoto">
                                <img src="./images/CloudComputing.png" alt="Cloud Computing" height="75px">
                            </div>
                            <div class="goodsNameTitle">Name :</div>
                            <div class="goodsName">Cloud Computing</div>
                            <div class="goodsDescriptionTitle">Description :</div>
                            <div class="goodsDescription">This is a service</div>
                            <div class="goodsPriceTitle">Description :</div>
                            <div class="goodsPrice">
                                <span>1000</span>
                                <span>pt</span>
                            </div>
                        </div>

                        <div class="goodsGrid">
                            <div class="goodsPhoto">
                                <img src="./images/CloudComputing.png" alt="Cloud Computing" height="75px">
                            </div>
                            <div class="goodsNameTitle">Name :</div>
                            <div class="goodsName">Cloud Computing</div>
                            <div class="goodsDescriptionTitle">Description :</div>
                            <div class="goodsDescription">This is a service</div>
                            <div class="goodsPriceTitle">Description :</div>
                            <div class="goodsPrice">
                                <span>1000</span>
                                <span>pt</span>
                            </div>
                        </div>

                        <div class="goodsGrid">
                            <div class="goodsPhoto">
                                <img src="./images/CloudComputing.png" alt="Cloud Computing" height="75px">
                            </div>
                            <div class="goodsNameTitle">Name :</div>
                            <div class="goodsName">Cloud Computing</div>
                            <div class="goodsDescriptionTitle">Description :</div>
                            <div class="goodsDescription">This is a service</div>
                            <div class="goodsPriceTitle">Description :</div>
                            <div class="goodsPrice">
                                <span>1000</span>
                                <span>pt</span>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="line">
                    <HR style="border:3 double #D1D1D1" width="80%" color=#D1D1D1 SIZE=3>
                </div>

                <div class="other-goods">
                    <div class="goods">
                        <div class="my-goods-tittle">
                            <h2>Others goods</h2>
                        </div>
                        <div class="my-goods-list">
                            <div class="goodsGrid">
                                <div class="goodsPhoto">
                                    <img src="./images/CloudComputing.png" alt="Cloud Computing" height="75px">
                                </div>
                                <div class="goodsNameTitle">Name :</div>
                                <div class="goodsName">Cloud Computing</div>
                                <div class="goodsDescriptionTitle">Description :</div>
                                <div class="goodsDescription">This is a service</div>
                                <div class="goodsPriceTitle">Description :</div>
                                <div class="goodsPrice">
                                    <span>1000</span>
                                    <span>pt</span>
                                </div>
                            </div>


                            <div class="goodsGrid">
                                <div class="goodsPhoto">
                                    <img src="./images/CloudComputing.png" alt="Cloud Computing" height="75px">
                                </div>
                                <div class="goodsNameTitle">Name :</div>
                                <div class="goodsName">Cloud Computing</div>
                                <div class="goodsDescriptionTitle">Description :</div>
                                <div class="goodsDescription">This is a service</div>
                                <div class="goodsPriceTitle">Description :</div>
                                <div class="goodsPrice">
                                    <span>1000</span>
                                    <span>pt</span>
                                </div>
                            </div>



                            <div class="goodsGrid">
                                <div class="goodsPhoto">
                                    <img src="./images/CloudComputing.png" alt="Cloud Computing" height="75px">
                                </div>
                                <div class="goodsNameTitle">Name :</div>
                                <div class="goodsName">Cloud Computing</div>
                                <div class="goodsDescriptionTitle">Description :</div>
                                <div class="goodsDescription">This is a service</div>
                                <div class="goodsPriceTitle">Description :</div>
                                <div class="goodsPrice">
                                    <span>1000</span>
                                    <span>pt</span>
                                </div>
                            </div>


                        </div>
                    </div>
                </div>
            </div>
            <div>
                <ul id="pagination">
                </ul>
            </div>

            <%@ include  file="./footer.jsp"%>
    </body>


    </html>