class Trait < ActiveRecord::Base
  belongs_to :person
  belongs_to :phenotype

  auto_strip_attributes :trait_information, :output_order
  validates_presence_of :person_id, :phenotype_id

  scope :has_pedigree, lambda { |pedigree|
    unless pedigree.blank?
      pedigree_id = pedigree[:id]
      unless pedigree_id.blank?
        joins(:person => :pedigree).
        where('pedigrees.id = ?', pedigree_id)
      end
    end
  }

  scope :has_person, lambda { |person_id|
    unless person_id.blank?
      where(:person_id, person_id)
    end
  }


end
