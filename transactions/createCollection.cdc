import BottomShot from 0xf8d6e0586b0a20c7

transaction {

    prepare(acct: AuthAccount){
        acct.save(<- BottomShot.createCollection(), to: /storage/BottomShot2)

        acct.link<&BottomShot.Collection{BottomShot.CollectionPublic}>(/public/BottomShot2, target: /storage/BottomShot2)
    }

    execute {
        log("Stored a collection for our NUTTY empty NFTs")
    }
}
 