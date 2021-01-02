<template>
    <div class="red lighten-3 pa-3">
        <h3>자세한 회원 정보를 확인합니다.</h3>
        <p>상세사항</p>
        <v-list dense>
            <v-list-item-group>
                <v-list-title-content>이름:</v-list-title-content>
                <v-list-title-content class="align-end">
                    {{ name }}
                </v-list-title-content>
            </v-list-item-group>
            <v-list-item-title>
                <v-list-title-content>주소:</v-list-title-content>
                <v-list-title-content class="align-end">
                    {{ address }}
                </v-list-title-content>
            </v-list-item-title>
            <v-list-item-title>
                <v-list-title-content>전화번호:</v-list-title-content>
                <v-list-title-content class="align-end">
                    {{ phone }}
                </v-list-title-content>
            </v-list-item-title>
            <v-list-item-title>
                <v-list-title-content>반려견유무:</v-list-title-content>
                <v-list-title-content class="align-end">
                    {{ hasDogKr }}
                </v-list-title-content>
            </v-list-item-title>
        </v-list>
       
    </div>
</template>
<script>
export default {
    props: ['name', 'address','phone','hasDog'],
    computed : {
        hasDogKr() {
            return this.hasDog === true? '있음' : '없음'
        }
    }
    
}
</script>