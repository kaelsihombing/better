//
//  story.swift
//  better
//
//  Created by Santo Michael Sihombing on 29/04/21.
//

import UIKit

struct Options {
    var option: String
    var type: String
}

struct QuestionItem {
    var question: String
    var options: [Options]
}

class Story {
    var isDone: UIImage
    var featuredImage: UIImage
    var titleStory : String
    var descriptionStory : String
    
    var caseDescription: String
    var questions: [QuestionItem]
    
    init(isDone: UIImage, featuredImage: UIImage, titleStory: String, descriptionStory: String, caseDescription: String, questions: [QuestionItem]) {
        self.isDone = isDone
        self.featuredImage = featuredImage
        self.titleStory = titleStory
        self.descriptionStory = descriptionStory
        
        self.caseDescription = caseDescription
        self.questions = questions
    }
    
    static func fetchStory() -> [Story] {
        return [
            Story(isDone: UIImage(named: "check icon")!,
                  featuredImage: UIImage(named: "working image")!,
                  titleStory: "Pekerjaan",
                  descriptionStory: "Sebuah kasis saat berada di lingkungan kerja",
                  caseDescription: "Ada sebuah perusahaan dimana kamu menjadi salah satu karyawan didalamnya. Perusahaan ini mengurus permasalahan coding dan desain sebuah aplikasi. Suatu project membutuhkan 2 tim dan 1 Project Manager",
                  questions: [
                    QuestionItem(question: "Dalam project, kamu dihadapkan dengan beberapa tugas. Tugas yang diberikan untuk Tim-mu cukup mudah, dan tidak sesulit untuk Tim B, sebaiknya yang kamu katakan pada Project Manager",
                                 options: [
                                    Options(option: "Diam saja", type: "Passive"),
                                    Options(option: "Sepertinya pambagiannya sangat adil", type: "Aggressive"),
                                    Options(option: "Maaf Pak PM, bukankah tugas nya tidak seimbang?", type: "Assertive")
                                ]
                    ),
                    QuestionItem(question: "Tim B keberatan dengan pembagian tugas sehingga menyeletuk mengatakan materi ini begitu menyulitkan team B, sebaiknya yang kamu katakan pada Tim B adalah…",
                                 options: [
                                    Options(option: "Diam saja", type: "Passive"),
                                    Options(option: "Bukankah kamu bisa belajar?", type: "Aggressive"),
                                    Options(option: "Maaf Pak Project Manager apakah sebaiknya tugas kami sedikit dipermudah?", type: "Assertive")
                                ]
                    ),
                    QuestionItem(question: "Mendengar celetukan Tim B, Project Manager berniat menukar tugas timmu dan tim B sebaiknya yang kamu katakan pada  Project Manager",
                                 options: [
                                    Options(option: "Diam saja menerima karena takut ada yang tersinggung", type: "Passive"),
                                    Options(option: "Wah tidak bisa dong! Kami juga keberatan Bu Ani", type: "Aggressive"),
                                    Options(option: "Maaf Bu Ani, bagi tim kami tugas ini juga cukup sulit, bolehkah kami meminta dispensasi?", type: "Assertive")
                                ]
                    ),
                    QuestionItem(question: "Setelah menimbang kedua tim, Project Manager memutuskan untuk menyatukan tim kamu dan tim B untuk mengerjakan project bersama. Namun, saat pelaksaan, Tim B tidak melakukan kontribusinya pada project, sebaiknya yang kamu katakan pada Tim B",
                                 options: [
                                    Options(option: "Melapor pada Project Manager tentang masalah ini", type: "Aggressive"),
                                    Options(option: "Mohon maaf Tim B, Bagaimana kita atur pembagian masing-masing kerja antar tim?", type: "Assertive"),
                                    Options(option: "Tidak berani menegur dikarenakan takut terjadi salahpaham antar tim.", type: "Passive")
                                ]
                    ),
                    QuestionItem(question: "Project Manager memanggil seluruh Tim untuk berkumpul, saat briefing, Project Manager mengatakan pekerjaan yang Tim mu lakukan ada kesalahan dan harus diulang dari awal, sebaiknya yang dilakukan Tim mu adalah",
                                 options: [
                                    Options(option: "Mohon maaf sebelumnya, menurut saya pekerjaan Tim kami tidak mesti diulang dari awal, karena point yang salah tidak dari awal pak", type: "Assertive"),
                                    Options(option: "Menerima dengan berat hati karena merasa diri belum berpengalaman", type: "Passive"),
                                    Options(option: "Tidak bisa begitu pak, saya sudah mengerjakan kerjaan ini 1 minggu tanpa tidur", type: "Aggressive")
                                ]
                    ),
                    
                ]
            ),
            Story(isDone: UIImage(named: "check icon")!,
                                  featuredImage: UIImage(named: "working image")!,
                                  titleStory: "Sosial",
                                  descriptionStory: "Sebuah kasus saat berada di Toko",
                                  caseDescription: "Kamu diundang ke sebuah acara pentas seni. Kamu memutuskan untuk pergi membeli baju yang cocok untuk acara tersebut. Ada tiga toko yang akan kamu coba.",
                                  questions: [
                                    QuestionItem(question: "Kamu melihat-lihat dalam toko A dan mencari baju yang sesuai, namun model yang ada pada toko A tidak mengikuti trend (Jadul), sebaiknya yang kamu lakukan adalah…",
                                                 options: [
                                                    Options(option: "Saya beli aja deh kak", type: "Passive"),
                                                    Options(option: "Bisa liat koleksi baju yang lain tidak, soalnya yang ini jelek-jelek?", type: "Aggressive"),
                                                    Options(option: "Mohon maaf kak, sepertinya saya lihat-lihat dulu saja ya..", type: "Assertive")
                                                ]
                                    ),
                                    QuestionItem(question: "Saat kamu melihat toko B, ada sebuah baju yang cukup menarik, namun tidak ada ukuran yang pas untuk tubuh mu, sebaiknya yang kamu lakukan adalah…",
                                                 options: [
                                                    Options(option: "Tidak apa-apa kak, ntar saya kecilkan di tukang jahit saja", type: "Passive"),
                                                    Options(option: "Bisa carikan saya baju dengan size yang lebih kecil", type: "Aggressive"),
                                                    Options(option: "Mohon maaf kak, apa baju ini ada size yang lain?", type: "Assertive")
                                                ]
                                    ),
                                    QuestionItem(question: "Karena karyawan toko tidak menemukan size yang sesuai dengan mu, sebaiknya yang kamu lakukan adalah…",
                                                 options: [
                                                    Options(option: "Pergi dan menggerutu “Gimana sih toko ini?”", type: "Passive"),
                                                    Options(option: "Saya beli tapi kasih harga lebih murah dong!", type: "Aggressive"),
                                                    Options(option: "Maaf kak, kalau tidak ada, saya tidak jadi beli saja, terimakasih sebelumnya", type: "Assertive")
                                                ]
                                    ),
                                    QuestionItem(question:  "Esoknya kamu pergi ke acara dengan menggunakan baju yang sudah kamu beli, namun teman mu menyeletuk pakaian mu mencolok, sebaiknya yang kamu lakukan adalah…",
                                                 options: [
                                                    Options(option: "Setiap orang punya style sendiri, suka-suka saya dong", type: "Aggressive"),
                                                    Options(option: "Iya sebelumnya maaf ya, agak susah saya menemukan baju yang sesuai ukuran saya?", type: "Assertive"),
                                                    Options(option: "Yaudah saya pakai jaket aja", type: "Passive")
                                                ]
                                    ),
                                    QuestionItem(question: "Saat melihat ada teman yang menggunakan kostum tidak cocok dengan konsep pentas seni, sebaiknya yang kamu lakukan adalah…",
                                                 options: [
                                                    Options(option: "Bagaimana kalau saya pinjam kan kamu kostum ini supaya dresscode kita sama?", type: "Assertive"),
                                                    Options(option: "Mungkin gak apa-apa agak berbeda", type: "Passive"),
                                                    Options(option: "Ganti dong kostumnya, gak cocok banget ini", type: "Aggressive")
                                                ]
                                    ),
                                    
                                ]
                            ),
                Story(isDone: UIImage(named: "check icon")!,
                                  featuredImage: UIImage(named: "working image")!,
                                  titleStory: "Kerja Kelompok",
                                  descriptionStory: "Sebuah kasus saat berdiskusi kelompok",
                                  caseDescription: "Dalam diskusi kelompok bersama, terdiri dari beberapa orang. Setiap orang berhak menyampaikan pendapatnya..",
                                  questions: [
                                    QuestionItem(question: "Adi terlihat menguasai diskusi dan tidak memberi kesempatan kepada teman lain untuk berpendapat. Saya mengingatkan kepadanya dengan mengatakan...",
                                                 options: [
                                                    Options(option: "Saya  hanya memperhatikan dan tidak mengatakan hal apapun karena saya takut teman tersebut tersinggung  dan marah dengan perkataan saya.", type: "Passive"),
                                                    Options(option: "Tolong diam sejenak, berikan teman lain kesempatan", type: "Aggressive"),
                                                    Options(option: "Sebaiknya kamu memberi kesempatan teman lain untuk berbicara, Adi karena ini merupakan ide bersama dan tujuan bersama", type: "Assertive")
                                                ]
                                    ),
                                    QuestionItem(question: "Setelah diskusi berlangsung 30 menit, dihidangkanlah makanan berupa snack, kue, maupun minuman. Dan terlihatlah salah seorang teman hendak mengambil semua makanan yang ada. Saya mengingatkan kepadanya dengen mengatakan..",
                                                 options: [
                                                    Options(option: "Diam saja hanya memperhatikan", type: "Passive"),
                                                    Options(option: "Woy, rakus amat!", type: "Aggressive"),
                                                    Options(option: "Makannya pelan-pelan saja, beri teman lain menyicipinya juga ya", type: "Assertive")
                                                ]
                                    ),
                                    QuestionItem(question: "Setelah menyantapi makanan dan minuman, lalu diberikan break sekitar 10 menit. Dan terjadilah perkumpulan yang menciptakan kelompok. Tersisalah seorang teman yang tidak mempunyai kelompok. Lalu kamu mengetahuinya. Tindakan kamu selanjutnya adalah",
                                                 options: [
                                                    Options(option: "Membiarkannya sendirian saja ", type: "Passive"),
                                                    Options(option: "Kasihan deh loe ya", type: "Aggressive"),
                                                    Options(option: "Mala, mari kemari, gabung bersama kami", type: "Assertive")
                                                ]
                                    ),
                                    QuestionItem(question:  "Selama perkumpulan geng tersebut, terdapatlah salah seorang teman dalam sebuah geng kami yang menceritakan kekurangan salah seorang teman kami. Saya mengingatkan kepadanya dengan mengatakan..",
                                                 options: [
                                                    Options(option: "Buset, Adi sungguh keterlaluan loe!", type: "Aggressive"),
                                                    Options(option: "Astaghfirullah, Adi tidak sebaiknya begitu, Hamim juga merupakan teman kamu", type: "Assertive"),
                                                    Options(option: "Diam saja hanya memperhatikan", type: "Passive")
                                                ]
                                    ),
                                    QuestionItem(question: "Tiba saatnya waktu untuk mempresentasikan hasil diskusi tersebut. Salah seorang teman mengomentari dengan sangat pedas. Saya menanggapinya dengan mengatakan..",
                                                 options: [
                                                    Options(option: "Baik mas, terima kasih atas masukannya. Kami akan memperbaikinya segera", type: "Assertive"),
                                                    Options(option: "Menangis dengan meneteskan air mata", type: "Passive"),
                                                    Options(option: "Sopan dikit dong mas", type: "Aggressive")
                                                ]
                                    ),
                                    
                                ]
                            )
        ]
    }
}
