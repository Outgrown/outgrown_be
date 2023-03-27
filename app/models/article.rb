class Article < ApplicationRecord

    belongs_to :user
    enum status: {
        unavailable: 0,
        available: 1, 
        pending: 2                
    }
    enum article_type: {
        bottoms: 0,
        tops: 1, 
        dresses: 2,
        other: 3
    }
    enum age_group: {
        baby: 0,
        todler: 1,
        little_kid: 2,
        big_kid: 3 
    }
    enum gender: {
        unisex: 0,
        male: 1,
        female: 2
    }
    enum condition: {
        fair: 0,
        good: 1,
        great: 2, 
        perfect: 3
    }
end