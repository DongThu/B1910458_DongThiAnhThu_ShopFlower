import {createStore} from "vuex"
import axios from "axios"

const store = createStore({
    state() {
        return {
            allFlowers: [],
            user: undefined,
            admin: undefined,
        }
    },
    mutations: {
        setFlowersData(state, payload){
            state.allFlowers = payload;
        },
        setUser(state, payload){
            state.user = payload;
        },
        setAdmin(state, payload){
            state.admin = payload;
        }
    },
    actions: {
        async getFlowersData(context){
            await axios.get('/flowers')
            .then(function (response) {
                context.commit("setFlowersData", response.data);
            })
            .catch(function (error) {
                console.log(error);
            });
        },
    }
})

export default store;