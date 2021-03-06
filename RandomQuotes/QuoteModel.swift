//
//  QuoteModel.swift
//  RandomQuotes
//
//  Created by Misha Samoylov on 09.02.2022.
//

import Foundation

struct QuoteModel {
    var quote: String
    var author: String
}

var quotes: [QuoteModel] = []

func initQuotes() {
    quotes.append(QuoteModel(quote: "Чего вы хотите достичь или избежать? Ответы на эти вопросы — это ваши задачи. Как вы собираетесь добиваться желаемых результатов? Ответ на этот вопрос можно назвать стратегией", author: "Уильям Ротшильд"))
    
    quotes.append(QuoteModel(quote: "Вы ничего не добьетесь, если будете ждать, пока кто-то прикажет вам действовать", author: "Митч Джоэл"))
    
    quotes.append(QuoteModel(quote: "Если вы заинтересованы в том, чтобы ваш бизнес выжил, сфоксируйтесь на создании продукта, а не на болтовне о нём", author: "Райан Фрейтас"))
    
    quotes.append(QuoteModel(quote: "Как только ты взобрался на очередную вершину, нужно понимать, что это всего лишь бугорок. А вершина там, еще дальше… Вот это постоянное желание достичь нового уровня и дает энергию", author: "Аркадий Добкин"))
    
    quotes.append(QuoteModel(quote: "Самые плохие качества для предпринимателя: быть снобом, не уметь адекватно оценивать обстановку, взять высокий темп и не иметь возможности его поддерживать, не обладать умением смотреть вперед", author: "Джек Ма"))
}
