module Supportify
  class Article < ActiveRecord::Base
    include PgSearch
    pg_search_scope :search, 
      against: {
        title: 'A',
        body: 'C'
      }, 
      associated_against: {
        tags: {name: 'B'}
      }
    
    before_save :set_published_at
    after_create :create_for_other_locales
    
    belongs_to :author, class_name: Supportify.author_class.to_s
    mount_uploader :image, ImageUploader
    
    acts_as_taggable_on :tags, :categories, :admin_tags
    
    validates :title, :slug, :locale, :body, :codif presence: true
    validates :slug, uniqueness: true
    validates :locale, inclusion: Supportify.locales.map(&:to_s)

    
    def to_label
      "#{codif} | #{title}"
    end


    
    private
    
    def create_for_other_locales
      #TODO
    end
    
    def set_published_at
      if published_changed?
        self.published_at = published ? Time.now : nil
      end
    end
  end
end
