<template>
    <div class="footer">
        <!-- <div class="news-letter">
            <h3>Đăng ký ngay để nhận thông báo!</h3>
            <form onsubmit="event.preventDefault();">
                <input type="email" name="useremailreceiveinfo" placeholder="Nhập email của bạn"
                    id="useremailreceiveinfo">
                <input type="submit" value="Đăng ký">
            </form>
        </div> -->

        <div class="box-container">

            <div class="box">
                <h3>Chủ đề</h3>
                <router-link @click="scrollToTop()" to="/menu"><i class="fas fa-arrow-right"></i> Hoa trang trí</router-link>
                <router-link @click="scrollToTop()" to="/menu"><i class="fas fa-arrow-right"></i> Hoa cưới</router-link>
                <router-link @click="scrollToTop()" to="/menu"><i class="fas fa-arrow-right"></i> Hoa Tặng Dịp Lễ</router-link>
                <router-link @click="scrollToTop()" to="/menu"><i class="fas fa-arrow-right"></i> Sen đá
                </router-link>
                <router-link @click="scrollToTop()" to="/menu"><i class="fas fa-arrow-right"></i> Phụ kiện</router-link>
                <router-link @click="scrollToTop()" to="/menu"><i class="fas fa-arrow-right"></i> Dụng cụ trồng hoa</router-link>
            </div>

            <div class="box">
                <h3>Liên kết nhanh</h3>
                <router-link @click="scrollToTop()" to="/"> <i class="fas fa-arrow-right"></i> Trang chủ</router-link>
                <router-link @click="scrollToTop()" to="/about"> <i class="fas fa-arrow-right"></i> Giới thiệu</router-link>
                <!-- <router-link @click="scrollToTop()" to="/promotions"> <i class="fas fa-arrow-right"></i> promotions -->
                <!-- </router-link> -->
                <router-link @click="scrollToTop()" to="/menu"> <i class="fas fa-arrow-right"></i>Sản phẩm</router-link>
                <!-- <router-link @click="scrollToTop()" to="/table"> <i class="fas fa-arrow-right"></i> book a table -->
                <!-- </router-link> -->
            </div>

            <div class="box">
                <h3>Liên kết thêm</h3>
                <div v-if="user">
                    <router-link @click="scrollToTop()" to="/cart"> <i class="fas fa-arrow-right"></i> Đơn hàng của bạn
                    </router-link>
                    <router-link @click="scrollToTop()" to="/myorder"> <i class="fas fa-arrow-right"></i> Thông tin đơn hàng
                    </router-link>
                </div>
                <div v-else>
                    <router-link @click="scrollToTop()" to="/login"> <i class="fas fa-arrow-right"></i> Đăng nhập
                    </router-link>
                    <router-link @click="scrollToTop()" to="/register"> <i class="fas fa-arrow-right"></i> Đăng ký
                    </router-link>
                </div>
            </div>

            <div class="box" style="font-size: 15px;">
                <h3>HỖ TRỢ ĐẶT HÀNG</h3>
                <b>
                Viber, Zalo: (+84) 946 830 300 <br>
                Giờ mở cửa mỗi ngày : 7:00am to 10:00pm  <br>
                Địa chỉ: 266 Đường 30/4, P.Xuân Khánh, Q.Ninh Kiều, TP.Cần Thơ <br>
                Điện thoại: 0946.830.300 <br>
                Email: t-flower@gmail.com <br>
                Chủ tài khoản: Đồng Thị Anh Thư <br>
                Số tài khoản: 699 699 799 815 <br>
                Tại: Ngân hàng PVcombank chi nhanh Tây Đô Cần Thơ .
 
                </b>
                
            </div>
            
        </div>

        <div class="bottom">

            <div class="share">
                <a href="https://www.facebook.com/" class="fab fa-facebook-f"></a>
                <a href="https://twitter.com/?lang=en" class="fab fa-twitter"></a>
                <a href="https://www.instagram.com/" class="fab fa-instagram"></a>
                <a href="https://www.pinterest.com/" class="fab fa-pinterest"></a>
            </div>

        </div>

    </div>
</template>

<script>
import { mapState } from 'vuex'
export default {
    name: 'FooterComponent',

    computed: {
        ...mapState(['user'])
    },

    methods: {
        scrollToTop() {
            window.scrollTo(0, 0);
        }
    }
}
</script>

<style scoped>
/* footer */
.footer {
    background: #f7f7f7;
    padding: 2rem 9%;
}

.footer .news-letter {
    text-align: center;
    margin-bottom: 2rem;
}

.footer .news-letter h3 {
    font-size: 2.5rem;
    color: #130f40;
    padding-bottom: 1rem;
}

.footer .news-letter form {
    max-width: 70rem;
    margin: 1rem auto;
    max-width: 70rem;

    display: flex;
    border-radius: .5rem;
    overflow: hidden;
}

.footer .news-letter form input[type="email"] {
    height: 100%;
    width: 100%;
    padding: 1rem 1.2rem;
    font-size: 1.6rem;
    color: #130f40;
    text-transform: none;
}

.footer .news-letter form input[type="submit"] {
    padding: 0 2rem;
    font-size: 1.6rem;
    color: #fff;
    background: #ae2771;
    cursor: pointer;
}

.footer .news-letter form input[type="submit"]:hover {
    background: #130f40;
}

.footer .box-container {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(20rem, 1fr));
    gap: 1.5rem;
}

.footer .box-container .box h3 {
    font-size: 2.2rem;
    color: #130f40;
    padding: 1rem 0;
}

.footer .box-container .box p {
    font-size: 1.4rem;
    color: #666;
    padding: 1rem 0;
}

.footer .box-container .box a {
    display: block;
    font-size: 1.4rem;
    color: #666;
    padding: 1rem 0;
}

.footer .box-container .box a:hover {
    color: #ae2771;
}

.footer .box-container .box a:hover i {
    padding-right: 2rem;
}

.footer .box-container .box a i {
    padding-right: .5rem;
    color: #ae2771;
}

.footer .bottom {
    padding-top: 1rem;
    text-align: center;
}

.footer .bottom .share {
    margin: 1.5rem 0;
}

.footer .bottom .share a {
    height: 4.5rem;
    width: 4.5rem;
    line-height: 4.5rem;
    font-size: 2rem;
    border-radius: .5rem;
    margin: 0 .3rem;
    color: #fff;
    background: #ae2771;
}

.footer .bottom .share a:hover {
    background: #ae2771;
}

@media (max-width: 576px) {
    .footer .box-container {

        grid-template-columns: repeat(auto-fit, minmax(15rem, 1fr));

    }

}
</style>