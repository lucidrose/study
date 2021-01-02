<template>
    <v-container>
        <v-layout row wrap>
            <v-flex xs6>
                <List></List>
            </v-flex>
            <v-flex xs6>
                <ListAdd></ListAdd>
            </v-flex>
        </v-layout>

    </v-container>
</template>

<script>
import List from './List.vue'
import ListAdd from './ListAdd.vue'
export default {
    components : {
        List,
        ListAdd
    }
}
</script>