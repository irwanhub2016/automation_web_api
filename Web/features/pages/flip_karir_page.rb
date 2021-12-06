class FlipKarirPage < SitePrism::Page
  element :page_title, '.brand-text'
  element :txt_open_positions,  'h3.advanced-page-title'
  element :search_jobs, 'input#job-title-search'
end