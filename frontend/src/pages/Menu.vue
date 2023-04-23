<template>
    <div class="menu-section">
        <div class="row">
            <div class="col-sm-4 col-12 filter-box">
                <div class="row search-box">
                    <input type="text" class="search-input" v-model="flowerObj.name" placeholder="Tìm kiếm..." />
                </div>

                <div class="row filter-drop-down">
                    <p @click="displayFilterDrop">Filter<span v-if="showDropDown">x</span><span v-else>v</span></p>
                </div>

                <div class="row filter-heading">
                    <h1>Trạng thái</h1>
                </div>

                <div class="row filter-section">
                    <ul class="filter-option">
                        <li>
                            <input type="button" name="cbStatus" id="bsStatus" value="Best Seller" hidden
                                @click="filterStatusBtn($event)" />
                            <label for="bsStatus" class="d-flex justify-content-between">Bán chạy nhất
                                <button class="unselect-btn" @click="unselectStatusBtn($event)"
                                    value="Best Seller">X</button></label>
                        </li>


                        <!-- <li>
                            <input type="button" name="cbStatus" id="ooStatus" value="Online Only" hidden
                                @click="filterStatusBtn($event)" />
                            <label for="ooStatus" class="d-flex justify-content-between">Online Only <button
                                    class="unselect-btn" @click="unselectStatusBtn($event)"
                                    value="Online Only">X</button></label>
                        </li> -->


                        <li>
                            <input type="button" name="cbStatus" id="soStatus" value="Sale Off" hidden
                                @click="filterStatusBtn($event)" />
                            <label for="soStatus" class="d-flex justify-content-between">Giảm giá <button
                                    class="unselect-btn" @click="unselectStatusBtn($event)"
                                    value="Sale Off">X</button></label>
                        </li>


                        <li>
                            <input type="button" name="cbStatus" id="sdStatus" value="Seasonal Flower" hidden
                                @click="filterStatusBtn($event)" />
                            <label for="sdStatus" class="d-flex justify-content-between">Hoa theo mùa<button
                                    class="unselect-btn" @click="unselectStatusBtn($event)"
                                    value="Seasonal Flower">X</button></label>
                        </li>


                        <li>
                            <input type="button" name="cbStatus" id="ndStatus" value="New Flower" hidden
                                @click="filterStatusBtn($event)" />
                            <label for="ndStatus" class="d-flex justify-content-between">Mẫu hoa mới<button
                                    class="unselect-btn" @click="unselectStatusBtn($event)"
                                    value="New Flower">X</button></label>
                        </li>

                    </ul>
                    <hr />
                </div>

                <div class="row filter-heading">
                    <h1>Giá tiền</h1>
                </div>

                <div class="row filter-section">
                    <ul class="filter-option">
                        <li>
                            <input type="button" name="rPrice" id="rtfPrice" value="50000,200000" hidden
                                @click="filterPriceBtn($event)" />
                            <label for="rtfPrice" class="d-flex justify-content-between">50.000đ - 200.000đ <button
                                    class="unselect-btn" @click="unselectPriceBtn($event)">X</button></label>
                        </li>

                        <li>
                            <input type="button" name="rPrice" id="rftPrice" value="200000,500000" hidden
                                @click="filterPriceBtn($event)" />
                            <label for="rftPrice" class="d-flex justify-content-between">200.000đ - 500.000đ <button
                                    class="unselect-btn" @click="unselectPriceBtn($event)">X</button></label>
                        </li>

                        <li>
                            <input type="button" name="rPrice" id="rttPrice" value="500000,700000" hidden
                                @click="filterPriceBtn($event)" />
                            <label for="rttPrice" class="d-flex justify-content-between">500.000đ - 700.000đ <button
                                    class="unselect-btn" @click="unselectPriceBtn($event)">X</button></label>
                        </li>

                        <li>
                            <input type="button" name="rPrice" id="mtPrice" value="700000" hidden
                                @click="filterPriceBtn($event)" />
                            <label for="mtPrice" class="d-flex justify-content-between">{{ ">" }} 700.000đ<button
                                    class="unselect-btn" @click="unselectPriceBtn($event)">X</button></label>
                        </li>

                        <li>
                            <input type="button" name="rPrice" id="ltPrice" value="50000" hidden
                                @click="filterPriceBtn($event)" />
                            <label for="ltPrice" class="d-flex justify-content-between">{{ "<" }} 50.000đ <button
                                    class="unselect-btn" @click="unselectPriceBtn($event)">X</button></label>
                        </li>

                    </ul>
                    <hr />
                </div>


                <!-- <div class="row filter-heading">
                    <h1>Type</h1>
                </div>

                <div class="row filter-section"> -->
                    <!-- <ul class="filter-option">
                        <li>
                            <input type="button" name="rType" id="mType" value="meat" hidden
                                @click="filterTypeBtn($event)" />
                            <label for="mType" class="d-flex justify-content-between">meat<button class="unselect-btn"
                                    @click="unselectTypeBtn($event)">X</button></label>
                        </li>

                        <li>
                            <input type="button" name="rType" id="vType" value="vegan" hidden
                                @click="filterTypeBtn($event)" />
                            <label for="vType" class="d-flex justify-content-between">vegan<button class="unselect-btn"
                                    @click="unselectTypeBtn($event)">X</button></label>
                        </li>

                    </ul> -->
                <!-- </div> -->
            </div>

            <div class="col-sm-8">
                <div class="row">
                    <div class="menu-tabs">
                        <input type="button" id="allFilterFlowerBtn" name="allFilterFlowerBtn" value="Tất cả"
                            class="menu-tab-item" @click="filterFlowerBtn($event)" />
                        <input type="button" id="FilterFlowerBtn" name="tacoFilterFlowerBtn" class="menu-tab-item"
                            value="Đóa hoa" @click="filterFlowerBtn($event)" />
                        <input type="button" id="burritoFilterFlowerBtn" name="burritoFilterFlowerBtn" class="menu-tab-item"
                            value="Hoa cưới" @click="filterFlowerBtn($event)" />
                        <input type="button" id="nachosFilterFlowerBtn" name="nachosFilterFlowerBtn" class="menu-tab-item"
                            value="Dụng cụ" @click="filterFlowerBtn($event)" />
                        <input type="button" id="sidesFilterFlowerBtn" name="sidesFilterFlowerBtn" class="menu-tab-item"
                            value="Hạt giống" @click="filterFlowerBtn($event)" />
                        <input type="button" id="dessertFilterFlowerBtn" name="dessertFilterFlowerBtn" class="menu-tab-item"
                            value="Hoa trang trí" @click="filterFlowerBtn($event)" />
                        <input type="button" id="drinkFilterFlowerBtn" name="drinkFilterFlowerBtn" class="menu-tab-item"
                            value="Sen đá" @click="filterFlowerBtn($event)" />
                    </div>
                </div>

                <div class="row box-container">
                    <div v-for="(f, index) in currentPageItems" :key="index">
                        <div class="box">
                            <a href="" class="fas fa-heart"></a>
                            <div class="image">
                                <img :src="require(`../assets/images/${f.flower_src}`)" alt="" />
                            </div>
                            <div class="content">
                                <h3>{{ f.flower_name }}</h3>
                                <div class="stars">
                                    <div v-for="s in Math.floor(parseFloat(f.flower_star))" :key="s" class="d-inline">
                                        <i class="fas fa-star"></i>
                                    </div>
                                    <div v-if="parseFloat(f.flower_star) - Math.floor(parseFloat(f.flower_star)) == 0.5"
                                        class="d-inline">
                                        <i class="fas fa-star-half-alt"></i>
                                    </div>
                                    <span> ({{ f.flower_vote }}) </span>
                                </div>
                                <div class="desc">
                                    <p>{{ f.flower_desc }}</p>
                                </div>
                                <div class="price">
                                    {{ parseFloat(f.flower_price) - parseFloat(f.flower_discount) }}đ
                                    <span v-if="parseFloat(f.flower_discount) != 0.00">{{ parseFloat(f.flower_price)
                                    }}đ</span>
                                </div>
                                <button class="btn" @click="addItem(index)">Thêm vào giỏ hàng</button>
                            </div>
                        </div>
                    </div>
                    <div v-if="!filterFlowers.length">
                        <div class="box">
                            <div class="content">
                                <h1 style="color: #057835fa;">Không tìm thấy kết quả!</h1>
                            </div>
                            <!-- <div class="image">
                                <img src="../assets/images/notfound.png" alt="" />
                            </div> -->
                        </div>
                    </div>
                </div>
                <div v-if="calculatePages > 1" class="action-row">

                    <button v-if="pageNum != 0" @click="previous()" class="action-btn"> {{ "<" }} </button>
                            <div v-for="(p, i) in calculatePages" :key="i" class="d-inline">
                                <span v-if="i == pageNum" class="highlight" @click="set(i)">{{ i + 1 }}</span>
                                <span v-else @click="set(i)">{{ i + 1 }}</span>
                            </div>
                            <button v-if="pageNum != calculatePages - 1" @click="next()" class="action-btn"> {{ ">" }}
                            </button>
                </div>
            </div>
        </div>

        <QuickView v-if="showQuickView" :flower="sendId">
            <button class="btn" @click="closeView">X</button>
        </QuickView>
    </div>
</template>

<script>
import QuickView from "@/components/QuickView.vue";
import { mapState } from "vuex";
export default {
    name: "Menu",

    data() {
        return {
            flowerObj: { name: "", category: "", status: [], price: "", type: "" },

            showQuickView: false,
            showDropDown: false,
            sendId: null,

            perPage: 6,
            pageNum: 0,
            previousCategoryClicked: "",
            previousPriceClicked: "",
            previousTypeClicked: "",
        };
    },

    computed: {
        ...mapState(["allFlowers"]),

        filterFlowers: function () {
            return this.allFlowers.filter((f) => f.flower_name.toLowerCase().match(this.flowerObj.name.toLowerCase()) &&
                (f.flower_category.match(this.flowerObj.category) || this.flowerObj.category == "Tất cả" || this.flowerObj.category == "") &&
                (this.evaluatePrice(f, this.flowerObj.price)) &&
                f.flower_type.toLowerCase().match(this.flowerObj.type.toLowerCase()) &&
                (this.evaluateStatus(f, this.flowerObj.status)));
        },
        currentPageItems: function () {
            return this.filterFlowers.slice(this.pageNum * this.perPage, this.pageNum * this.perPage + this.perPage);
        },
        calculatePages: function () {
            if (this.filterFlowers.length % this.perPage != 0) {
                return Math.floor((this.filterFlowers.length) / this.perPage) + 1;
            }
            else {
                return this.filterFlowers.length / this.perPage;
            }
        }
    },
    methods: {
        set(val) {
            this.pageNum = val;
        },
        next() {
            this.pageNum++;
        },
        previous() {
            this.pageNum--;
        },
        checkSale: function (flower, statusArray) {
            if (statusArray.includes("Sale Off")) {
                if (parseFloat(flower.flower_discount) > 0) {
                    return true;
                }
                else {
                    return false;
                }
            }
            return true;
        },
        checkBest: function (flower, statusArray) {
            if (statusArray.includes("Best Seller")) {
                if (flower.flower_status.includes("best seller")) {
                    return true;
                }
                else {
                    return false;
                }
            }
            return true;
        },
        checkOnl: function (flower, statusArray) {
            if (statusArray.includes("Online Only")) {
                if (flower.flower_status.includes("online only")) {
                    return true;
                }
                else {
                    return false;
                }
            }
            return true;
        },
        checkSeason: function (flower, statusArray) {
            if (statusArray.includes("Seasonal Flower")) {
                if (flower.flower_status.includes("seasonal Flower")) {
                    return true;
                }
                else {
                    return false;
                }
            }
            return true;
        },
        checkNew: function (flower, statusArray) {
            if (statusArray.includes("New Flower")) {
                if (flower.flower_status.includes("new Flower")) {
                    return true;
                }
                else {
                    return false;
                }
            }
            return true;
        },
        evaluateStatus: function (flower, statusArray) {
            this.pageNum = 0;
            if (statusArray.length != 0) {
                if (this.checkSale(flower, statusArray) && this.checkBest(flower, statusArray) && this.checkNew(flower, statusArray) && this.checkSeason(flower, statusArray) && this.checkOnl(flower, statusArray)) {
                    return flower;
                }
            }
            else {
                return flower;
            }
        },
        evaluatePrice: function (flower, priceRange) {
            this.pageNum = 0;
            var cal = parseFloat(flower.flower_price) - parseFloat(flower.flower_discount);
            if (priceRange == "50000,200000") {
                if (50000 <= cal && cal <= 200000) {
                    return flower;
                }
            }
            else if (priceRange == "200000,500000") {
                if (200000 <= cal && cal <= 500000) {
                    return flower;
                }
            }
            else if (priceRange == "500000,700000") {
                if (500000 <= cal && cal <= 700000) {
                    return flower;
                }
            }
            else if (priceRange == "50000") {
                if (cal <= 50000) {
                    return flower;
                }
            }
            else if (priceRange == "700000") {
                if (cal >= 700000) {
                    return flower;
                }
            }
            else if (priceRange == "") {
                return flower;
            }
        },
        filterFlowerBtn: function (e) {
            this.pageNum = 0;
            if (this.flowerObj.category != e.target.value && this.previousCategoryClicked != "") {
                this.previousCategoryClicked.target.style.background = "#ae2771";
            }
            this.flowerObj.category = e.target.value;
            this.previousCategoryClicked = e;
            e.target.style.background = "#e693f4bc";
        },
        filterStatusBtn: function (e) {
            this.pageNum = 0;
            if (this.flowerObj.status.includes(e.target.value) == false) {
                this.flowerObj.status.push(e.target.value);
                document.querySelector(`[for=${e.target.id}]`).style.background = "#e693f4bc";
                document.querySelector(`[for=${e.target.id}]`).style.color = "white";
                document.querySelector(`[for=${e.target.id}]`).querySelector(":scope > button").style.display = "block";
            }
        },
        filterPriceBtn: function (e) {
            this.pageNum = 0;
            this.flowerObj.price = "";
            this.flowerObj.price += e.target.value;
            document.querySelector(`[for=${e.target.id}]`).style.background = "#057835fa";
            document.querySelector(`[for=${e.target.id}]`).style.color = "white";
            document.querySelector(`[for=${e.target.id}]`).querySelector(":scope > button").style.display = "block";
            if (this.previousPriceClicked != "") {
                document.querySelector(`[for=${this.previousPriceClicked.target.id}]`).style.background = "inherit";
                document.querySelector(`[for=${this.previousPriceClicked.target.id}]`).style.color = "inherit";
                document.querySelector(`[for=${this.previousPriceClicked.target.id}]`).querySelector(":scope > button").style.display = "none";
            }
            this.previousPriceClicked = e;
        },
        filterTypeBtn: function (e) {
            this.pageNum = 0;
            this.flowerObj.type = "";
            this.flowerObj.type += e.target.value;
            document.querySelector(`[for=${e.target.id}]`).style.background = "#057835fa";
            document.querySelector(`[for=${e.target.id}]`).style.color = "white";
            document.querySelector(`[for=${e.target.id}]`).querySelector(":scope > button").style.display = "block";
            if (this.previousTypeClicked != "") {
                document.querySelector(`[for=${this.previousTypeClicked.target.id}]`).style.background = "inherit";
                document.querySelector(`[for=${this.previousTypeClicked.target.id}]`).style.color = "inherit";
                document.querySelector(`[for=${this.previousTypeClicked.target.id}]`).querySelector(":scope > button").style.display = "none";
            }
            this.previousTypeClicked = e;
        },
        unselectStatusBtn: function (e) {
            this.pageNum = 0;
            this.flowerObj.status = this.flowerObj.status.filter(function (a) { return a !== e.target.value; });
            e.target.parentNode.style.background = "inherit";
            e.target.parentNode.style.color = "inherit";
            e.target.parentNode.querySelector(":scope > button").style.display = "none";
        },
        unselectPriceBtn: function () {
            this.pageNum = 0;
            this.flowerObj.price = "";
            document.querySelector(`[for=${this.previousPriceClicked.target.id}]`).style.background = "inherit";
            document.querySelector(`[for=${this.previousPriceClicked.target.id}]`).style.color = "inherit";
            document.querySelector(`[for=${this.previousPriceClicked.target.id}]`).querySelector(":scope > button").style.display = "none";
            this.previousPriceClicked = "";
        },
        unselectTypeBtn: function () {
            this.pageNum = 0;
            this.flowerObj.type = "";
            document.querySelector(`[for=${this.previousTypeClicked.target.id}]`).style.background = "inherit";
            document.querySelector(`[for=${this.previousTypeClicked.target.id}]`).style.color = "inherit";
            document.querySelector(`[for=${this.previousTypeClicked.target.id}]`).querySelector(":scope > button").style.display = "none";
            this.previousTypeClicked = "";
        },
        addItem: function (index) {
            this.sendId = parseInt(this.currentPageItems[index].flower_id);
            this.showQuickView = !this.showQuickView;
        },

        closeView: function () {
            this.showQuickView = !this.showQuickView;
        },

        displayFilterDrop: function () {
            let divControl1 = document.getElementsByClassName("filter-heading");
            let divControl2 = document.getElementsByClassName("filter-section");
            for (var i = 0; i < divControl1.length; i++) {
                if (this.showDropDown) {
                    divControl1[i].style.display = "none";
                    divControl2[i].style.display = "none";
                }
                else {
                    divControl1[i].style.display = "block";
                    divControl2[i].style.display = "block";
                }
            }
            this.showDropDown = !this.showDropDown;
        }

    },
    components: { QuickView }
};
</script>

<style scoped>
input[type="button"] {
    background: none;
    color: inherit;
    border: none;
    padding: 0;
    font: inherit;
    cursor: pointer;
    outline: inherit;
}

.unselect-btn:active,
.unselect-btn:focus,
.action-btn:active,
.action-btn:focus {
    border: none;
    outline: none;
}

hr {
    border-top: 3px solid #e693f4bc;
    width: 100%;
}

.unselect-btn {
    background: transparent;
    padding-right: 10px;
    cursor: pointer;
    color: inherit;
    display: none;
}


.filter-section {
    width: inherit;
}

.filter-heading {
    padding-top: 30px;
}

.filter-heading h1 {
    color: #ae2771
}

.filter-option {
    list-style-type: none;
    width: inherit;
}

.filter-option label {
    width: 100%;
    font-size: 15px;
    padding: 3px 0px;

}

.filter-option label:hover {
    color: white;
    background-color: #f38609 !important;
    transition: all 0.5s ease;
}

.search-box {
    width: 100%;
    justify-content: center;
    position: relative;
    display: flex;
}

.search-input {
    margin: 0;
    width: 100%;
    height: 40px;
    font-size: 20px;
    color: white;
    background: #ae2771;
}

::placeholder {
    color: white;
}

.menu-section {
    padding: 2rem 9%;
}

.menu-section .menu-tabs {
    margin-bottom: 30px;
    flex: 0 0 100%;
    max-width: 100%;
    text-align: center;
    background-color: #ae2771;
}

.menu-section .menu-tabs .menu-tab-item {
    display: inline-block;
    cursor: pointer;
    padding: 5px 30px;
    border-radius: 30%;
    font-size: 20px;
    color: whitesmoke;
    font-weight: 500;
    text-transform: capitalize;
    transition: all 0.3s ease;
    margin: 0;
}

.menu-section .menu-tabs .menu-tab-item:hover {
    background-color: #f38609 !important;
}

.menu-section .menu-tabs .menu-tab-item p {
    padding: none;
    margin: none;
}

.menu-section .box-container {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(25rem, 1fr));
    gap: 1.5rem;
}

.menu-section .box-container .box {
    border-radius: 0.5rem;
    position: relative;
    background: #f7f7f7;
    padding: 2rem;
    text-align: center;
}

.menu-section .box-container .box .fa-heart {
    position: absolute;
    top: 1.5rem;
    right: 1.5rem;
    font-size: 2.5rem;
    color: #666;
    cursor: pointer;
}

.menu-section .box-container .box .fa-heart:hover {
    color: #ae2771;
}

.menu-section .box-container .box .image {
    margin: 1rem 0;
}

.menu-section .box-container .box .image img {
    height: 15rem;
}

.menu-section .box-container .box .content h3 {
    font-size: 2rem;
    color: #130f40;
}

.menu-section .box-container .box .content .stars {
    padding: 1rem 0;
    font-size: 1.7rem;
}

.menu-section .box-container .box .content .stars i {
    color: gold;
}

.menu-section .box-container .box .content .stars span {
    color: #666;
}

.menu-section .box-container .box .content .desc p {
    font-size: 14px;
    margin: 0;
}

.menu-section .box-container .box .content .price {
    font-size: 2rem;
    color: #130f40;
}

.menu-section .box-container .box .content .price span {
    font-size: 1.5rem;
    color: #666;
    text-decoration: line-through;
}

.menu-section .action-row {
    padding-top: 30px;
    width: 100%;
    text-align: center;
    font-size: 20px;
}

.menu-section .action-row .action-btn {
    background-color: #ae2771;
    padding: 3px;
    border: 2px solid #ae2771;
    border-radius: 30%;
    color: white;
}

.menu-section .action-row span {
    margin-right: 15px;
}

.menu-section .action-row span:hover {
    cursor: pointer;
}

.menu-section .action-row span.highlight {
    color: #f38609;
}

.menu-section .action-row span:first-of-type {
    margin-left: 15px;
}

.filter-drop-down {
    display: none;
}

@media (min-width: 576px) {

    .filter-heading,
    .filter-section {
        display: block !important;
    }
}

@media (max-width: 768px) {
    .menu-section .box-container {

        grid-template-columns: repeat(auto-fit, minmax(20rem, 1fr));
        gap: 1rem;
    }

    .menu-section .box-container .box .content h3 {
        height: 4rem;
    }
}

@media (max-width: 576px) {

    .search-box,
    .filter-heading,
    .filter-section {
        width: auto;
    }

    .filter-option {
        width: 100%;
    }

    .filter-drop-down {
        display: block;
        background-color: #ae2771;
        color: white;
        font-weight: 400;
        margin-bottom: 15px;
        margin-top: 15px;

    }

    .filter-drop-down p {
        font-size: 20px;
        padding: 5px 0px;
        margin: 0;
        display: flex;
        justify-content: space-between;
    }

    .filter-drop-down p span {
        font-size: 20px;
        padding-right: 10px;
        text-transform: lowercase;
        font-weight: 300;
    }

    .filter-heading,
    .filter-section {
        display: none;
    }

    .menu-tabs .menu-tab-item {
        font-size: 12px !important;
        padding: 5px 20px !important;
    }

    .menu-section .action-row {
        font-size: 16px !important;
    }

    .menu-section .action-row span {
        margin-right: 5px;
    }

    .menu-section .box-container .box .image img {
        height: 10rem;
    }

    .menu-section .box-container .box .desc p,
    .menu-section .box-container .box .content .stars {
        font-size: 10px !important;
    }

    .menu-section .box-container .box .content h3 {
        font-size: 14px !important;
        height: 28px;
    }
}
</style>
