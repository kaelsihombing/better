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
                  titleStory: "Working",
                  descriptionStory: "A story when you are working",
                  caseDescription: "Ada sebuah perusahaan dimana kamu menjadi salah satu karyawan didalamnya. Perusahaan ini mengurus permasalahan coding dan desain sebuah aplikasi. Suatu project membutuhkan 2 tim dan 1 Project Manager",
                  questions: [
                    QuestionItem(question: "Dalam project, kamu dihadapkan dengan beberapa tugas. Tugas yang diberikan untuk Tim-mu cukup mudah, dan tidak sesulit untuk Tim B, sebaiknya yang kamu katakan pada Project Manager",
                                 options: [
                                    Options(option: "Diam saja", type: "Pasif"),
                                    Options(option: "Sepertinya pambagiannya sangat adil", type: "Agresive"),
                                    Options(option: "Maaf Pak PM, bukankah tugas nya tidak seimbang?", type: "Assertive")
                                ]
                    ),
                    QuestionItem(question: "Tim B keberatan dengan pembagian tugas sehingga menyeletuk mengatakan materi ini begitu menyulitkan team B, sebaiknya yang kamu katakan pada Tim B adalah…",
                                 options: [
                                    Options(option: "Diam saja", type: "Pasif"),
                                    Options(option: "Bukankah kamu bisa belajar?", type: "Agresive"),
                                    Options(option: "Maaf Pak Project Manager apakah sebaiknya tugas kami sedikit dipermudah?", type: "Assertive")
                                ]
                    ),
                    QuestionItem(question: "Mendengar celetukan Tim B, Project Manager berniat menukar tugas timmu dan tim B sebaiknya yang kamu katakan pada  Project Manager",
                                 options: [
                                    Options(option: "Diam saja menerima karena takut ada yang tersinggung", type: "Pasif"),
                                    Options(option: "Wah tidak bisa dong! Kami juga keberatan Bu Ani", type: "Agresive"),
                                    Options(option: "Maaf Bu Ani, bagi tim kami tugas ini juga cukup sulit, bolehkah kami meminta dispensasi?", type: "Assertive")
                                ]
                    ),
                    QuestionItem(question: "Setelah menimbang kedua tim, Project Manager memutuskan untuk menyatukan tim kamu dan tim B untuk mengerjakan project bersama. Namun, saat pelaksaan, Tim B tidak melakukan kontribusinya pada project, sebaiknya yang kamu katakan pada Tim B",
                                 options: [
                                    Options(option: "Melapor pada Project Manager tentang masalah ini", type: "Agresif"),
                                    Options(option: "Mohon maaf Tim B, Bagaimana kita atur pembagian masing-masing kerja antar tim?", type: "Assertive"),
                                    Options(option: "Tidak berani menegur dikarenakan takut terjadi salahpaham antar tim.", type: "Pasif")
                                ]
                    ),
                    QuestionItem(question: "Project Manager memanggil seluruh Tim untuk berkumpul, saat briefing, Project Manager mengatakan pekerjaan yang Tim mu lakukan ada kesalahan dan harus diulang dari awal, sebaiknya yang dilakukan Tim mu adalah",
                                 options: [
                                    Options(option: "Mohon maaf sebelumnya, menurut saya pekerjaan Tim kami tidak mesti diulang dari awal, karena point yang salah tidak dari awal pak", type: "Asertive"),
                                    Options(option: "Menerima dengan berat hati karena merasa diri belum berpengalaman", type: "Pasif"),
                                    Options(option: "Tidak bisa begitu pak, saya sudah mengerjakan kerjaan ini 1 minggu tanpa tidur", type: "Agresif")
                                ]
                    ),
                    
                ]
            ),
            Story(isDone: UIImage(named: "check icon")!,
                  featuredImage: UIImage(named: "working image")!,
                  titleStory: "Working",
                  descriptionStory: "A story when you are working",
                  caseDescription: "Ada sebuah perusahaan dimana kamu menjadi salah satu karyawan didalamnya. Perusahaan ini mengurus permasalahan coding dan desain sebuah aplikasi. Suatu project membutuhkan 2 tim dan 1 Project Manager",
                  questions: [
                    QuestionItem(question: "Dalam project, kamu dihadapkan dengan beberapa tugas. Tugas yang diberikan untuk Tim-mu cukup mudah, dan tidak sesulit untuk Tim B, sebaiknya yang kamu katakan pada Project Manager",
                                 options: [
                                    Options(option: "Diam saja", type: "Pasif"),
                                    Options(option: "Kamu mengatakan “Sepertinya pambagiannya sangat adil”", type: "Agresive"),
                                    Options(option: "“Maaf Pak PM, bukankah tugas nya tidak seimbang?”", type: "Assertive")
                                ]
                    ),
                    QuestionItem(question: "Dalam project, kamu dihadapkan dengan beberapa tugas. Tugas yang diberikan untuk Tim-mu cukup mudah, dan tidak sesulit untuk Tim B, sebaiknya yang kamu katakan pada Project Manager",
                                 options: [
                                    Options(option: "Diam saja", type: "Pasif"),
                                    Options(option: "Kamu mengatakan “Sepertinya pambagiannya sangat adil”", type: "Agresive"),
                                    Options(option: "“Maaf Pak PM, bukankah tugas nya tidak seimbang?”", type: "Assertive")
                                ]
                    )
                ]
            ),
        ]
    }
}
