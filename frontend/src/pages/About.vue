<template>
    <section class="about-section">
        <div class="heading">
            <span>Cửa hàng chúng tôi là?</span>
            <h3>Cửa hàng hoa nhập khẩu chất lượng</h3>
        </div>

        <div class="row">
            <div class="about-content">
                <img src="../assets/images/SunFlower/nhan-vien.png" alt=""></div>
        </div>
        <br>
                <div class="about-content-text" style="font-size: 15px;">
                    <p>T-Flower được thành lập năm 2019 bởi người sáng lập Thư. Cửa hàng chúng tôi hiện có 1 chi nhánh tại Cần Thơ. 
                        Sau vài năm hoạt động cửa hàng đã tích lũy cho mình những kinh nghiệm chăm sóc, tư vấn kĩ lưỡng với khách hàng.
                        Đồng thời những thợ cắm hoa được đào tạo chuyên nghiệp, luôn luôn phục vụ quý khách một cách tốt nhất.
                    </p>
                    <p>
                        Shop chúng tôi chuyên cung cấp: <br>
                        Hoa tươi các loại …<br>
                        Phụ kiện ngành hoa <br>
                        Hoa cưới, hoa chúc mừng … hoa các ngày lễ.
                    </p>
                    <p><b>Quý khách sống ở Cần Thơ ???</b>  Quý khách có thể đến tại shop để tận tay chọn những bông hoa ưng ý nhất làm quà gửi đến bạn bè cũng như người thân thay cho những lời yêu thương muốn nói.</p>
                    <p>
                        Hoặc quí khách chỉ cần gọi vào số +84 946 830 300 và cho chúng tôi biết quí khách đặt kiểu hoa nào, nếu như quí khách đang phân vân chúng tôi có sẳn tư vấn viên sẽ giúp quí khách loại bỏ những phân vân và chọn một món quà hợp sở thích cũng như ý nghĩa mà quí khách muốn gửi gấm. </p>
                    <p>Ngoài ra tại shophoacantho.com chúng tôi có hệ thống đặt hàng online, đơn hàng của quí khách sẽ được duyệt và chúng tôi sẽ gọi lại cho quí khách một cách nhanh chóng.</p>
                    <p>
                        Chúng tôi giao hoa tận nơi tại các quận, huyện và địa bàn thành phố Cần Thơ.</p>
                       <p> Đặc biệt vào các ngày lễ giao hoa 24/24 mong mang lại niềm vui cho quí khách.</p>

                        <p> Hãy đến với Shop Hoa Cần Thơ .com để mang về những món quà đầy ý nghĩa.</p>
                    
                </div>
            
       

        <div class="row">
            <div class="about-article">
                <h3>Hãy tô điểm màu sắc thế giới bạn bằng những bông hoa xinh đẹp</h3>
            </div>
        </div>

        <div class="row gallery">
            <div class="wrapper">
                <img src="../assets/images/doahoa/doa-2.jpg" alt="">
                <img src="../assets/images/doahoa/doa-4.jpg" alt="">
                <img src="../assets/images/hoacuoi/hoacuoi-6.jpg" alt="">
                <img src="../assets/images/hoacuoi/hoacuoi-2.jpg" alt="">
                <img src="../assets/images/hoacuoi/hoacuoi-3.jpg" alt="">
                <img src="../assets/images/dungcu/dungcu-1.jpg" alt="">
                <img src="../assets/images/dungcu/dungcu-2.jpg" alt="">
                <img src="../assets/images/dungcu/dungcu-3.jpg" alt="">
                <img src="../assets/images/trangtri/trangtri-2.jpg" alt="">
                <img src="../assets/images/trangtri/trangtri-6.jpg" alt="">
            </div>
        </div>
    </section>
</template>

<script>
export default {
    name: "About",
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Satisfy&display=swap");

.about-section {
    padding: 2rem 9%;
}

.about-section .about-content {
    display: flex;
    width: 100%;

}

.about-section .about-content img {
    background-color: rgb(249, 249, 249);
}

.about-section .about-content .about-content-text {
    font-size: 16px;
    padding-left: 50px;
}

.about-section .about-article {
    margin-top: 50px;
    padding: 10px;
    text-align: center;
    background-color: #ae2771;
    width: 100%;
}

.about-section .about-article h3 {
    font-family: 'Satisfy', cursive;
    font-size: 32px;
    color: white;
}


.about-section .gallery {
    overflow: hidden;
    padding: 100px;
}

.about-section .gallery .wrapper {
    position: relative;
    flex-grow: 1;
    margin: auto;
    max-width: 1200px;
    max-height: 1200px;
    display: grid;
    grid-template-columns: repeat(8, 1fr);
    grid-template-rows: repeat(4, 1fr);
    grid-gap: 2vmin;
    justify-items: center;
    align-items: center;
}

.about-section .gallery .wrapper img {
    z-index: 1;
    grid-column: span 2;
    max-width: 100%;
    margin-bottom: -52%;
    clip-path: polygon(50% 0%, 100% 50%, 50% 100%, 0% 50%);
    transform: scale(1);
    transition: all .25s;
}

.about-section .gallery .wrapper img:nth-child(7n + 1) {
    grid-column: 2 / span 2;
}

.about-section .gallery .wrapper img:hover {
    z-index: 2;
    transform: scale(2);
}

@media (max-width: 768px) {
    .about-section .about-content img {
        width: 250px;
    }

    .about-section .gallery .wrapper img:hover {
        transform: scale(2.5);
    }
}

@media (max-width: 576px) {
    .about-section .about-content img {
        width: inherit;
    }

    .about-section .about-content {
        display: block;
    }

    .about-section .about-content .about-content-text {
        padding-left: 0px;
    }

    .about-section .gallery {
        padding: 50px 0px;
    }

    .about-section .gallery .wrapper img {
        max-width: 100%;

    }

    .about-section .gallery .wrapper {
        grid-gap: 2vmin;
    }

    .about-section .gallery .wrapper img:hover {
        transform: scale(2);
    }

}
</style>