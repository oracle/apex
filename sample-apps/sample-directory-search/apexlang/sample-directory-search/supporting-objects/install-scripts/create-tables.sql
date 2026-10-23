create table eba_srch_txt_cost_centers (
  cost_center_id number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
    constraint cost_center_id_pk primary key,
  cost_center_description varchar2(400 char) not null
);

create table eba_srch_txt_groups (
  group_id number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
    constraint group_id_pk primary key,
  group_name varchar2(200 char) not null,
  group_description varchar2(400 char),
  constraint groups_group_name_uk unique (group_name)
);

create table eba_srch_txt_employees (
  employee_id number default on null to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
    constraint employee_id_pk primary key,
  first_name varchar2(100 char) not null,
  last_name varchar2(100 char) not null,
  email varchar2(320 char) not null,
  user_id varchar2(255 char) not null,
  country varchar2(100 char),
  country_code varchar2( 2 char),
  geographic_region varchar2(100 char),
  city varchar2(100 char),
  career_level varchar2(50 char),
  job_title varchar2(200 char),
  cost_center_id number,
  manager_id number,
  org_size number,
  direct_reports number,
  phone_country_code varchar2(8 char),
  phone_number varchar2(32 char),
  profile json,
  tags json,
  employee_groups json,
  permalink varchar2(1000 char),
  timezone varchar2(64 char),
  gender varchar2(1 char),
  constraint employees_cost_center_id_fk foreign key (cost_center_id)
    references eba_srch_txt_cost_centers (cost_center_id),
  constraint employees_manager_id_fk foreign key (manager_id)
    references eba_srch_txt_employees (employee_id),
  constraint employees_email_uk unique (email),
  constraint employees_user_id_uk unique (user_id),
  constraint employees_org_size_ck check (org_size is null or org_size >= 0),
  constraint employees_direct_reports_ck check (direct_reports is null or direct_reports >= 0)
);

create index employees_cost_center_i on eba_srch_txt_employees (cost_center_id);
create index employees_manager_i on eba_srch_txt_employees (manager_id);

create or replace  view eba_srch_txt_employee_org_v as
select
  e.employee_id,
  e.first_name,
  e.last_name,
  e.email,
  e.user_id,
  e.country,
  e.country_code,
  e.geographic_region,
  e.city,
  e.career_level,
  e.job_title,
  e.cost_center_id,
  cc.cost_center_description,
  e.manager_id,
  e.org_size,
  e.direct_reports,
  e.phone_country_code,
  e.phone_number,
  e.profile,
  e.tags,
  e.employee_groups,
  e.permalink,
  e.timezone
from eba_srch_txt_employees e
left join eba_srch_txt_cost_centers cc
  on cc.cost_center_id = e.cost_center_id
/

CREATE TABLE eba_srch_txt_countries (
  country_code_alpha2       CHAR(2 CHAR) CONSTRAINT countries_pk PRIMARY KEY,
  country_code_alpha3       CHAR(3 CHAR) NOT NULL,
  region                    VARCHAR2(20 CHAR) NOT NULL,
  country_name              VARCHAR2(200 CHAR) NOT NULL,
  country_name_english      VARCHAR2(200 CHAR) NOT NULL,
  capital_city              VARCHAR2(150 CHAR),
  estimated_population      NUMBER(15,0) NOT NULL,
  estimated_population_year NUMBER(4) NOT NULL,
  official_or_common_language VARCHAR2(500 CHAR) NOT NULL,
  description               VARCHAR2(500 CHAR) NOT NULL,
  CONSTRAINT countries_alpha3_uk UNIQUE (country_code_alpha3),
  CONSTRAINT countries_alpha2_ck CHECK (country_code_alpha2 = UPPER(country_code_alpha2)),
  CONSTRAINT countries_alpha3_ck CHECK (country_code_alpha3 = UPPER(country_code_alpha3)),
  CONSTRAINT countries_region_ck CHECK (region IN ('Africa', 'Americas', 'Antarctica', 'Asia', 'Europe', 'Oceania')),
  CONSTRAINT countries_population_ck CHECK (estimated_population >= 0),
  CONSTRAINT countries_population_year_ck CHECK (estimated_population_year BETWEEN 1900 AND 2100)
);

COMMENT ON TABLE  eba_srch_txt_countries IS 'ISO 3166-1 country and territory reference data.';
COMMENT ON COLUMN eba_srch_txt_countries.country_code_alpha2 IS 'ISO 3166-1 Alpha-2 code; primary key.';
COMMENT ON COLUMN eba_srch_txt_countries.country_code_alpha3 IS 'ISO 3166-1 Alpha-3 code.';
COMMENT ON COLUMN eba_srch_txt_countries.region IS 'UN M49 broad geographic region.';
COMMENT ON COLUMN eba_srch_txt_countries.country_name IS 'Country or territory name in a native/local spelling.';
COMMENT ON COLUMN eba_srch_txt_countries.country_name_english IS 'Country or territory name in common US English.';
COMMENT ON COLUMN eba_srch_txt_countries.capital_city IS 'Capital city in English; null where no permanent capital is applicable.';
COMMENT ON COLUMN eba_srch_txt_countries.estimated_population IS 'Estimated resident population for the associated estimate year.';
COMMENT ON COLUMN eba_srch_txt_countries.estimated_population_year IS 'Year represented by estimated_population.';
COMMENT ON COLUMN eba_srch_txt_countries.official_or_common_language IS 'Official or most commonly used language(s).';
COMMENT ON COLUMN eba_srch_txt_countries.description IS 'Short country or territory description, limited to 500 characters.';

INSERT ALL
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'AD', 'AND', UNISTR('Europe'), UNISTR('Andorra'),
    UNISTR('Andorra'), UNISTR('Andorra la Vella'), 83753,
    2026, UNISTR('Catalan'),
    UNISTR('Andorra is located in Southern Europe. Its capital is Andorra la Vella. The primary official or common language is Catalan.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'AE', 'ARE', UNISTR('Asia'), UNISTR('\0627\0644\0625\0645\0627\0631\0627\062A'),
    UNISTR('United Arab Emirates'), UNISTR('Abu Dhabi'), 11574682,
    2026, UNISTR('Arabic'),
    UNISTR('United Arab Emirates is located in Western Asia. Its capital is Abu Dhabi. The primary official or common language is Arabic.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'AF', 'AFG', UNISTR('Asia'), UNISTR('\0627\0641\063A\0627\0646\0633\062A\0627\0646'),
    UNISTR('Afghanistan'), UNISTR('Kabul'), 45047068,
    2026, UNISTR('Dari, Pashto, Turkmen'),
    UNISTR('Afghanistan is located in Southern Asia. Its capital is Kabul. Official or common languages include Dari, Pashto, and Turkmen.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'AG', 'ATG', UNISTR('Americas'), UNISTR('Antigua and Barbuda'),
    UNISTR('Antigua and Barbuda'), UNISTR('Saint John''s'), 94626,
    2026, UNISTR('English'),
    UNISTR('Antigua and Barbuda is located in Caribbean. Its capital is Saint John''s. The primary official or common language is English.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'AI', 'AIA', UNISTR('Americas'), UNISTR('Anguilla'),
    UNISTR('Anguilla'), UNISTR('The Valley'), 14817,
    2026, UNISTR('English'),
    UNISTR('Anguilla is located in Caribbean. Its capital is The Valley. The primary official or common language is English.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'AL', 'ALB', UNISTR('Europe'), UNISTR('Shqip\00EBria'),
    UNISTR('Albania'), UNISTR('Tirana'), 2751025,
    2026, UNISTR('Albanian'),
    UNISTR('Albania is located in Southeast Europe. Its capital is Tirana. The primary official or common language is Albanian.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'AM', 'ARM', UNISTR('Asia'), UNISTR('\0540\0561\0575\0561\057D\057F\0561\0576'),
    UNISTR('Armenia'), UNISTR('Yerevan'), 2930915,
    2026, UNISTR('Armenian'),
    UNISTR('Armenia is located in Western Asia. Its capital is Yerevan. The primary official or common language is Armenian.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'AO', 'AGO', UNISTR('Africa'), UNISTR('Angola'),
    UNISTR('Angola'), UNISTR('Luanda'), 40215180,
    2026, UNISTR('Portuguese'),
    UNISTR('Angola is located in Middle Africa. Its capital is Luanda. The primary official or common language is Portuguese.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'AQ', 'ATA', UNISTR('Antarctica'), UNISTR('Antarctica'),
    UNISTR('Antarctica'), NULL, 0,
    2024, UNISTR('Not applicable'),
    UNISTR('Antarctica is located in Antarctic and has no permanent capital. No permanent resident language population is recorded.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'AR', 'ARG', UNISTR('Americas'), UNISTR('Argentina'),
    UNISTR('Argentina'), UNISTR('Buenos Aires'), 46003734,
    2026, UNISTR('Guaran\00ED, Spanish'),
    UNISTR('Argentina is located in South America. Its capital is Buenos Aires. Official or common languages include Guaran\00ED and Spanish.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'AS', 'ASM', UNISTR('Oceania'), UNISTR('S\0101moa Amelika'),
    UNISTR('American Samoa'), UNISTR('Pago Pago'), 45318,
    2026, UNISTR('English, Samoan'),
    UNISTR('American Samoa is located in Polynesia. Its capital is Pago Pago. Official or common languages include English and Samoan.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'AT', 'AUT', UNISTR('Europe'), UNISTR('\00D6sterreich'),
    UNISTR('Austria'), UNISTR('Vienna'), 9107266,
    2026, UNISTR('Austro-Bavarian German'),
    UNISTR('Austria is located in Central Europe. Its capital is Vienna. The primary official or common language is Austro-Bavarian German.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'AU', 'AUS', UNISTR('Oceania'), UNISTR('Australia'),
    UNISTR('Australia'), UNISTR('Canberra'), 27227096,
    2026, UNISTR('English'),
    UNISTR('Australia is located in Australia and New Zealand. Its capital is Canberra. The primary official or common language is English.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'AW', 'ABW', UNISTR('Americas'), UNISTR('Aruba'),
    UNISTR('Aruba'), UNISTR('Oranjestad'), 108164,
    2026, UNISTR('Dutch, Papiamento'),
    UNISTR('Aruba is located in Caribbean. Its capital is Oranjestad. Official or common languages include Dutch and Papiamento.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'AX', 'ALA', UNISTR('Europe'), UNISTR('\00C5land'),
    UNISTR('\00C5land Islands'), UNISTR('Mariehamn'), 30600,
    2024, UNISTR('Swedish'),
    UNISTR('\00C5land Islands is located in Northern Europe. Its capital is Mariehamn. The primary official or common language is Swedish.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'AZ', 'AZE', UNISTR('Asia'), UNISTR('Az\0259rbaycan'),
    UNISTR('Azerbaijan'), UNISTR('Baku'), 10454855,
    2026, UNISTR('Azerbaijani, Russian'),
    UNISTR('Azerbaijan is located in Western Asia. Its capital is Baku. Official or common languages include Azerbaijani and Russian.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'BA', 'BIH', UNISTR('Europe'), UNISTR('Bosna i Hercegovina'),
    UNISTR('Bosnia and Herzegovina'), UNISTR('Sarajevo'), 3114242,
    2026, UNISTR('Bosnian, Croatian, Serbian'),
    UNISTR('Bosnia and Herzegovina is located in Southeast Europe. Its capital is Sarajevo. Official or common languages include Bosnian, Croatian, and Serbian.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'BB', 'BRB', UNISTR('Americas'), UNISTR('Barbados'),
    UNISTR('Barbados'), UNISTR('Bridgetown'), 282724,
    2026, UNISTR('English'),
    UNISTR('Barbados is located in Caribbean. Its capital is Bridgetown. The primary official or common language is English.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'BD', 'BGD', UNISTR('Asia'), UNISTR('\09AC\09BE\0982\09B2\09BE\09A6\09C7\09B6'),
    UNISTR('Bangladesh'), UNISTR('Dhaka'), 177818044,
    2026, UNISTR('Bengali'),
    UNISTR('Bangladesh is located in Southern Asia. Its capital is Dhaka. The primary official or common language is Bengali.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'BE', 'BEL', UNISTR('Europe'), UNISTR('Belgien'),
    UNISTR('Belgium'), UNISTR('Brussels'), 11774642,
    2026, UNISTR('German, French, Dutch'),
    UNISTR('Belgium is located in Western Europe. Its capital is Brussels. Official or common languages include German, French, and Dutch.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'BF', 'BFA', UNISTR('Africa'), UNISTR('Burkina Faso'),
    UNISTR('Burkina Faso'), UNISTR('Ouagadougou'), 24601700,
    2026, UNISTR('French'),
    UNISTR('Burkina Faso is located in Western Africa. Its capital is Ouagadougou. The primary official or common language is French.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'BG', 'BGR', UNISTR('Europe'), UNISTR('\0411\044A\043B\0433\0430\0440\0438\044F'),
    UNISTR('Bulgaria'), UNISTR('Sofia'), 6667660,
    2026, UNISTR('Bulgarian'),
    UNISTR('Bulgaria is located in Southeast Europe. Its capital is Sofia. The primary official or common language is Bulgarian.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'BH', 'BHR', UNISTR('Asia'), UNISTR('\0627\0644\0628\062D\0631\064A\0646'),
    UNISTR('Bahrain'), UNISTR('Manama'), 1675572,
    2026, UNISTR('Arabic'),
    UNISTR('Bahrain is located in Western Asia. Its capital is Manama. The primary official or common language is Arabic.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'BI', 'BDI', UNISTR('Africa'), UNISTR('Uburundi'),
    UNISTR('Burundi'), UNISTR('Gitega'), 14729157,
    2026, UNISTR('French, Kirundi'),
    UNISTR('Burundi is located in Eastern Africa. Its capital is Gitega. Official or common languages include French and Kirundi.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'BJ', 'BEN', UNISTR('Africa'), UNISTR('B\00E9nin'),
    UNISTR('Benin'), UNISTR('Porto-Novo'), 15170420,
    2026, UNISTR('French'),
    UNISTR('Benin is located in Western Africa. Its capital is Porto-Novo. The primary official or common language is French.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'BL', 'BLM', UNISTR('Americas'), UNISTR('Saint-Barth\00E9lemy'),
    UNISTR('Saint Barth\00E9lemy'), UNISTR('Gustavia'), 11550,
    2026, UNISTR('French'),
    UNISTR('Saint Barth\00E9lemy is located in Caribbean. Its capital is Gustavia. The primary official or common language is French.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'BM', 'BMU', UNISTR('Americas'), UNISTR('Bermuda'),
    UNISTR('Bermuda'), UNISTR('Hamilton'), 64459,
    2026, UNISTR('English'),
    UNISTR('Bermuda is located in North America. Its capital is Hamilton. The primary official or common language is English.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'BN', 'BRN', UNISTR('Asia'), UNISTR('Negara Brunei Darussalam'),
    UNISTR('Brunei'), UNISTR('Bandar Seri Begawan'), 469775,
    2026, UNISTR('Malay'),
    UNISTR('Brunei is located in South-Eastern Asia. Its capital is Bandar Seri Begawan. The primary official or common language is Malay.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'BO', 'BOL', UNISTR('Americas'), UNISTR('Wuliwya'),
    UNISTR('Bolivia'), UNISTR('Sucre'), 12749291,
    2026, UNISTR('Aymara, Guaran\00ED, Quechua, Spanish'),
    UNISTR('Bolivia is located in South America. Its capital is Sucre. Official or common languages include Aymara, Guaran\00ED, Quechua, and other local languages.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'BQ', 'BES', UNISTR('Americas'), UNISTR('Caribisch Nederland'),
    UNISTR('Caribbean Netherlands'), UNISTR('Kralendijk'), 31913,
    2026, UNISTR('English, Dutch, Papiamento'),
    UNISTR('Caribbean Netherlands is located in Caribbean. Its capital is Kralendijk. Official or common languages include English, Dutch, and Papiamento.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'BR', 'BRA', UNISTR('Americas'), UNISTR('Brasil'),
    UNISTR('Brazil'), UNISTR('Bras\00EDlia'), 213562666,
    2026, UNISTR('Portuguese'),
    UNISTR('Brazil is located in South America. Its capital is Bras\00EDlia. The primary official or common language is Portuguese.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'BS', 'BHS', UNISTR('Americas'), UNISTR('Bahamas'),
    UNISTR('Bahamas'), UNISTR('Nassau'), 404628,
    2026, UNISTR('English'),
    UNISTR('Bahamas is located in Caribbean. Its capital is Nassau. The primary official or common language is English.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'BT', 'BTN', UNISTR('Asia'), UNISTR('\0F60\0F56\0FB2\0F74\0F42\0F0B\0F61\0F74\0F63\0F0B'),
    UNISTR('Bhutan'), UNISTR('Thimphu'), 802214,
    2026, UNISTR('Dzongkha'),
    UNISTR('Bhutan is located in Southern Asia. Its capital is Thimphu. The primary official or common language is Dzongkha.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'BV', 'BVT', UNISTR('Antarctica'), UNISTR('Bouvet\00F8ya'),
    UNISTR('Bouvet Island'), NULL, 0,
    2024, UNISTR('Norwegian'),
    UNISTR('Bouvet Island is located in Antarctic and has no permanent capital. The primary official or common language is Norwegian.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'BW', 'BWA', UNISTR('Africa'), UNISTR('Botswana'),
    UNISTR('Botswana'), UNISTR('Gaborone'), 2603388,
    2026, UNISTR('English, Tswana'),
    UNISTR('Botswana is located in Southern Africa. Its capital is Gaborone. Official or common languages include English and Tswana.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'BY', 'BLR', UNISTR('Europe'), UNISTR('\0411\0435\043B\0430\0440\0443\0301\0441\044C'),
    UNISTR('Belarus'), UNISTR('Minsk'), 8937018,
    2026, UNISTR('Belarusian, Russian'),
    UNISTR('Belarus is located in Eastern Europe. Its capital is Minsk. Official or common languages include Belarusian and Russian.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'BZ', 'BLZ', UNISTR('Americas'), UNISTR('Belice'),
    UNISTR('Belize'), UNISTR('Belmopan'), 428644,
    2026, UNISTR('Belizean Creole, English, Spanish'),
    UNISTR('Belize is located in Central America. Its capital is Belmopan. Official or common languages include Belizean Creole, English, and Spanish.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'CA', 'CAN', UNISTR('Americas'), UNISTR('Canada'),
    UNISTR('Canada'), UNISTR('Ottawa'), 40467728,
    2026, UNISTR('English, French'),
    UNISTR('Canada is located in North America. Its capital is Ottawa. Official or common languages include English and French.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'CC', 'CCK', UNISTR('Oceania'), UNISTR('Cocos (Keeling) Islands'),
    UNISTR('Cocos (Keeling) Islands'), UNISTR('West Island'), 600,
    2024, UNISTR('English'),
    UNISTR('Cocos (Keeling) Islands is located in Australia and New Zealand. Its capital is West Island. The primary official or common language is English.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'CD', 'COD', UNISTR('Africa'), UNISTR('RD Congo'),
    UNISTR('Democratic Republic of the Congo'), UNISTR('Kinshasa'), 116452162,
    2026, UNISTR('French, Kikongo, Lingala, Tshiluba, Swahili'),
    UNISTR('Democratic Republic of the Congo is located in Middle Africa. Its capital is Kinshasa. Official or common languages include French, Kikongo, Lingala, and other local languages.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'CF', 'CAF', UNISTR('Africa'), UNISTR('R\00E9publique centrafricaine'),
    UNISTR('Central African Republic'), UNISTR('Bangui'), 5698984,
    2026, UNISTR('French, Sango'),
    UNISTR('Central African Republic is located in Middle Africa. Its capital is Bangui. Official or common languages include French and Sango.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'CG', 'COG', UNISTR('Africa'), UNISTR('R\00E9publique du Congo'),
    UNISTR('Congo'), UNISTR('Brazzaville'), 6637786,
    2026, UNISTR('French, Kikongo, Lingala'),
    UNISTR('Congo is located in Middle Africa. Its capital is Brazzaville. Official or common languages include French, Kikongo, and Lingala.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'CH', 'CHE', UNISTR('Europe'), UNISTR('Suisse'),
    UNISTR('Switzerland'), UNISTR('Bern'), 9007798,
    2026, UNISTR('French, Swiss German, Italian, Romansh'),
    UNISTR('Switzerland is located in Western Europe. Its capital is Bern. Official or common languages include French, Swiss German, Italian, and other local languages.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'CI', 'CIV', UNISTR('Africa'), UNISTR('C\00F4te d''Ivoire'),
    UNISTR('Ivory Coast'), UNISTR('Yamoussoukro'), 33494346,
    2026, UNISTR('French'),
    UNISTR('Ivory Coast is located in Western Africa. Its capital is Yamoussoukro. The primary official or common language is French.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'CK', 'COK', UNISTR('Oceania'), UNISTR('K\016Bki ''\0100irani'),
    UNISTR('Cook Islands'), UNISTR('Avarua'), 12826,
    2026, UNISTR('English, Cook Islands M\0101ori'),
    UNISTR('Cook Islands is located in Polynesia. Its capital is Avarua. Official or common languages include English and Cook Islands M\0101ori.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'CL', 'CHL', UNISTR('Americas'), UNISTR('Chile'),
    UNISTR('Chile'), UNISTR('Santiago'), 19945850,
    2026, UNISTR('Spanish'),
    UNISTR('Chile is located in South America. Its capital is Santiago. The primary official or common language is Spanish.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'CM', 'CMR', UNISTR('Africa'), UNISTR('Cameroun'),
    UNISTR('Cameroon'), UNISTR('Yaound\00E9'), 30640817,
    2026, UNISTR('English, French'),
    UNISTR('Cameroon is located in Middle Africa. Its capital is Yaound\00E9. Official or common languages include English and French.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'CN', 'CHN', UNISTR('Asia'), UNISTR('\4E2D\56FD'),
    UNISTR('China'), UNISTR('Beijing'), 1412914089,
    2026, UNISTR('Chinese'),
    UNISTR('China is located in Eastern Asia. Its capital is Beijing. The primary official or common language is Chinese.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'CO', 'COL', UNISTR('Americas'), UNISTR('Colombia'),
    UNISTR('Colombia'), UNISTR('Bogot\00E1'), 53936226,
    2026, UNISTR('Spanish'),
    UNISTR('Colombia is located in South America. Its capital is Bogot\00E1. The primary official or common language is Spanish.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'CR', 'CRI', UNISTR('Americas'), UNISTR('Costa Rica'),
    UNISTR('Costa Rica'), UNISTR('San Jos\00E9'), 5174789,
    2026, UNISTR('Spanish'),
    UNISTR('Costa Rica is located in Central America. Its capital is San Jos\00E9. The primary official or common language is Spanish.')
  )
SELECT 1 FROM dual;

INSERT ALL
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'CU', 'CUB', UNISTR('Americas'), UNISTR('Cuba'),
    UNISTR('Cuba'), UNISTR('Havana'), 10892659,
    2026, UNISTR('Spanish'),
    UNISTR('Cuba is located in Caribbean. Its capital is Havana. The primary official or common language is Spanish.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'CV', 'CPV', UNISTR('Africa'), UNISTR('Cabo Verde'),
    UNISTR('Cape Verde'), UNISTR('Praia'), 529630,
    2026, UNISTR('Portuguese'),
    UNISTR('Cape Verde is located in Western Africa. Its capital is Praia. The primary official or common language is Portuguese.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'CW', 'CUW', UNISTR('Americas'), UNISTR('Pais K\00F2rsou'),
    UNISTR('Cura\00E7ao'), UNISTR('Willemstad'), 185440,
    2026, UNISTR('English, Dutch, Papiamento'),
    UNISTR('Cura\00E7ao is located in Caribbean. Its capital is Willemstad. Official or common languages include English, Dutch, and Papiamento.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'CX', 'CXR', UNISTR('Oceania'), UNISTR('Christmas Island'),
    UNISTR('Christmas Island'), UNISTR('Flying Fish Cove'), 1700,
    2024, UNISTR('English'),
    UNISTR('Christmas Island is located in Australia and New Zealand. Its capital is Flying Fish Cove. The primary official or common language is English.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'CY', 'CYP', UNISTR('Europe'), UNISTR('\039A\03CD\03C0\03C1\03BF\03C2'),
    UNISTR('Cyprus'), UNISTR('Nicosia'), 1382334,
    2026, UNISTR('Greek, Turkish'),
    UNISTR('Cyprus is located in Southern Europe. Its capital is Nicosia. Official or common languages include Greek and Turkish.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'CZ', 'CZE', UNISTR('Europe'), UNISTR('\010Cesko'),
    UNISTR('Czechia'), UNISTR('Prague'), 10527780,
    2026, UNISTR('Czech, Slovak'),
    UNISTR('Czechia is located in Central Europe. Its capital is Prague. Official or common languages include Czech and Slovak.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'DE', 'DEU', UNISTR('Europe'), UNISTR('Deutschland'),
    UNISTR('Germany'), UNISTR('Berlin'), 83644258,
    2026, UNISTR('German'),
    UNISTR('Germany is located in Western Europe. Its capital is Berlin. The primary official or common language is German.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'DJ', 'DJI', UNISTR('Africa'), UNISTR('\062C\064A\0628\0648\062A\064A'),
    UNISTR('Djibouti'), UNISTR('Djibouti'), 1199459,
    2026, UNISTR('Arabic, French'),
    UNISTR('Djibouti is located in Eastern Africa. Its capital is Djibouti. Official or common languages include Arabic and French.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'DK', 'DNK', UNISTR('Europe'), UNISTR('Danmark'),
    UNISTR('Denmark'), UNISTR('Copenhagen'), 6023520,
    2026, UNISTR('Danish'),
    UNISTR('Denmark is located in Northern Europe. Its capital is Copenhagen. The primary official or common language is Danish.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'DM', 'DMA', UNISTR('Americas'), UNISTR('Dominica'),
    UNISTR('Dominica'), UNISTR('Roseau'), 65511,
    2026, UNISTR('English'),
    UNISTR('Dominica is located in Caribbean. Its capital is Roseau. The primary official or common language is English.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'DO', 'DOM', UNISTR('Americas'), UNISTR('Rep\00FAblica Dominicana'),
    UNISTR('Dominican Republic'), UNISTR('Santo Domingo'), 11609500,
    2026, UNISTR('Spanish'),
    UNISTR('Dominican Republic is located in Caribbean. Its capital is Santo Domingo. The primary official or common language is Spanish.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'DZ', 'DZA', UNISTR('Africa'), UNISTR('\0627\0644\062C\0632\0627\0626\0631'),
    UNISTR('Algeria'), UNISTR('Algiers'), 48028334,
    2026, UNISTR('Arabic'),
    UNISTR('Algeria is located in Northern Africa. Its capital is Algiers. The primary official or common language is Arabic.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'EC', 'ECU', UNISTR('Americas'), UNISTR('Ecuador'),
    UNISTR('Ecuador'), UNISTR('Quito'), 18444506,
    2026, UNISTR('Spanish'),
    UNISTR('Ecuador is located in South America. Its capital is Quito. The primary official or common language is Spanish.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'EE', 'EST', UNISTR('Europe'), UNISTR('Eesti'),
    UNISTR('Estonia'), UNISTR('Tallinn'), 1331062,
    2026, UNISTR('Estonian'),
    UNISTR('Estonia is located in Northern Europe. Its capital is Tallinn. The primary official or common language is Estonian.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'EG', 'EGY', UNISTR('Africa'), UNISTR('\0645\0635\0631'),
    UNISTR('Egypt'), UNISTR('Cairo'), 120101175,
    2026, UNISTR('Arabic'),
    UNISTR('Egypt is located in Northern Africa. Its capital is Cairo. The primary official or common language is Arabic.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'EH', 'ESH', UNISTR('Africa'), UNISTR('\0627\0644\0635\062D\0631\0627\0621 \0627\0644\063A\0631\0628\064A\0629'),
    UNISTR('Western Sahara'), UNISTR('El Aai\00FAn'), 610813,
    2026, UNISTR('Berber, Hassaniya, Spanish'),
    UNISTR('Western Sahara is located in Northern Africa. Its capital is El Aai\00FAn. Official or common languages include Berber, Hassaniya, and Spanish.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'ER', 'ERI', UNISTR('Africa'), UNISTR('\0625\0631\064A\062A\0631\064A\0627'),
    UNISTR('Eritrea'), UNISTR('Asmara'), 3682669,
    2026, UNISTR('Arabic, English, Tigrinya'),
    UNISTR('Eritrea is located in Eastern Africa. Its capital is Asmara. Official or common languages include Arabic, English, and Tigrinya.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'ES', 'ESP', UNISTR('Europe'), UNISTR('Espa\00F1a'),
    UNISTR('Spain'), UNISTR('Madrid'), 47850793,
    2026, UNISTR('Spanish'),
    UNISTR('Spain is located in Southern Europe. Its capital is Madrid. The primary official or common language is Spanish.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'ET', 'ETH', UNISTR('Africa'), UNISTR('\12A2\1275\12EE\1335\12EB'),
    UNISTR('Ethiopia'), UNISTR('Addis Ababa'), 138902185,
    2026, UNISTR('Amharic'),
    UNISTR('Ethiopia is located in Eastern Africa. Its capital is Addis Ababa. The primary official or common language is Amharic.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'FI', 'FIN', UNISTR('Europe'), UNISTR('Suomi'),
    UNISTR('Finland'), UNISTR('Helsinki'), 5621739,
    2026, UNISTR('Finnish, Swedish'),
    UNISTR('Finland is located in Northern Europe. Its capital is Helsinki. Official or common languages include Finnish and Swedish.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'FJ', 'FJI', UNISTR('Oceania'), UNISTR('Viti'),
    UNISTR('Fiji'), UNISTR('Suva'), 937282,
    2026, UNISTR('English, Fijian, Fiji Hindi'),
    UNISTR('Fiji is located in Melanesia. Its capital is Suva. Official or common languages include English, Fijian, and Fiji Hindi.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'FK', 'FLK', UNISTR('Americas'), UNISTR('Falkland Islands'),
    UNISTR('Falkland Islands'), UNISTR('Stanley'), 3465,
    2026, UNISTR('English'),
    UNISTR('Falkland Islands is located in South America. Its capital is Stanley. The primary official or common language is English.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'FM', 'FSM', UNISTR('Oceania'), UNISTR('Micronesia'),
    UNISTR('Micronesia'), UNISTR('Palikir'), 114182,
    2026, UNISTR('English'),
    UNISTR('Micronesia is located in Micronesia. Its capital is Palikir. The primary official or common language is English.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'FO', 'FRO', UNISTR('Europe'), UNISTR('F\00E6r\00F8erne'),
    UNISTR('Faroe Islands'), UNISTR('T\00F3rshavn'), 56526,
    2026, UNISTR('Danish, Faroese'),
    UNISTR('Faroe Islands is located in Northern Europe. Its capital is T\00F3rshavn. Official or common languages include Danish and Faroese.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'FR', 'FRA', UNISTR('Europe'), UNISTR('France'),
    UNISTR('France'), UNISTR('Paris'), 66746401,
    2026, UNISTR('French'),
    UNISTR('France is located in Western Europe. Its capital is Paris. The primary official or common language is French.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'GA', 'GAB', UNISTR('Africa'), UNISTR('Gabon'),
    UNISTR('Gabon'), UNISTR('Libreville'), 2647400,
    2026, UNISTR('French'),
    UNISTR('Gabon is located in Middle Africa. Its capital is Libreville. The primary official or common language is French.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'GB', 'GBR', UNISTR('Europe'), UNISTR('United Kingdom'),
    UNISTR('United Kingdom'), UNISTR('London'), 69931528,
    2026, UNISTR('English'),
    UNISTR('United Kingdom is located in Northern Europe. Its capital is London. The primary official or common language is English.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'GD', 'GRD', UNISTR('Americas'), UNISTR('Grenada'),
    UNISTR('Grenada'), UNISTR('St. George''s'), 117362,
    2026, UNISTR('English'),
    UNISTR('Grenada is located in Caribbean. Its capital is St. George''s. The primary official or common language is English.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'GE', 'GEO', UNISTR('Asia'), UNISTR('\10E1\10D0\10E5\10D0\10E0\10D7\10D5\10D4\10DA\10DD'),
    UNISTR('Georgia'), UNISTR('Tbilisi'), 3804642,
    2026, UNISTR('Georgian'),
    UNISTR('Georgia is located in Western Asia. Its capital is Tbilisi. The primary official or common language is Georgian.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'GF', 'GUF', UNISTR('Americas'), UNISTR('Guyane fran\00E7aise'),
    UNISTR('French Guiana'), UNISTR('Cayenne'), 318872,
    2026, UNISTR('French'),
    UNISTR('French Guiana is located in South America. Its capital is Cayenne. The primary official or common language is French.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'GG', 'GGY', UNISTR('Europe'), UNISTR('Guernesey'),
    UNISTR('Guernsey'), UNISTR('St. Peter Port'), 64610,
    2026, UNISTR('English, French, Guern\00E9siais'),
    UNISTR('Guernsey is located in Northern Europe. Its capital is St. Peter Port. Official or common languages include English, French, and Guern\00E9siais.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'GH', 'GHA', UNISTR('Africa'), UNISTR('Ghana'),
    UNISTR('Ghana'), UNISTR('Accra'), 35697557,
    2026, UNISTR('English'),
    UNISTR('Ghana is located in Western Africa. Its capital is Accra. The primary official or common language is English.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'GI', 'GIB', UNISTR('Europe'), UNISTR('Gibraltar'),
    UNISTR('Gibraltar'), UNISTR('Gibraltar'), 40867,
    2026, UNISTR('English'),
    UNISTR('Gibraltar is located in Southern Europe. Its capital is Gibraltar. The primary official or common language is English.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'GL', 'GRL', UNISTR('Americas'), UNISTR('Kalaallit Nunaat'),
    UNISTR('Greenland'), UNISTR('Nuuk'), 55629,
    2026, UNISTR('Greenlandic'),
    UNISTR('Greenland is located in North America. Its capital is Nuuk. The primary official or common language is Greenlandic.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'GM', 'GMB', UNISTR('Africa'), UNISTR('Gambia'),
    UNISTR('Gambia'), UNISTR('Banjul'), 2884079,
    2026, UNISTR('English'),
    UNISTR('Gambia is located in Western Africa. Its capital is Banjul. The primary official or common language is English.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'GN', 'GIN', UNISTR('Africa'), UNISTR('Guin\00E9e'),
    UNISTR('Guinea'), UNISTR('Conakry'), 15441992,
    2026, UNISTR('French'),
    UNISTR('Guinea is located in Western Africa. Its capital is Conakry. The primary official or common language is French.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'GP', 'GLP', UNISTR('Americas'), UNISTR('Guadeloupe'),
    UNISTR('Guadeloupe'), UNISTR('Basse-Terre'), 372453,
    2026, UNISTR('French'),
    UNISTR('Guadeloupe is located in Caribbean. Its capital is Basse-Terre. The primary official or common language is French.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'GQ', 'GNQ', UNISTR('Africa'), UNISTR('Guin\00E9e \00E9quatoriale'),
    UNISTR('Equatorial Guinea'), UNISTR('Malabo'), 1984468,
    2026, UNISTR('French, Portuguese, Spanish'),
    UNISTR('Equatorial Guinea is located in Middle Africa. Its capital is Malabo. Official or common languages include French, Portuguese, and Spanish.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'GR', 'GRC', UNISTR('Europe'), UNISTR('\0395\03BB\03BB\03AC\03B4\03B1'),
    UNISTR('Greece'), UNISTR('Athens'), 9897116,
    2026, UNISTR('Greek'),
    UNISTR('Greece is located in Southern Europe. Its capital is Athens. The primary official or common language is Greek.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'GS', 'SGS', UNISTR('Antarctica'), UNISTR('South Georgia'),
    UNISTR('South Georgia'), UNISTR('King Edward Point'), 0,
    2024, UNISTR('English'),
    UNISTR('South Georgia is located in Antarctic. Its capital is King Edward Point. The primary official or common language is English.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'GT', 'GTM', UNISTR('Americas'), UNISTR('Guatemala'),
    UNISTR('Guatemala'), UNISTR('Guatemala City'), 18967978,
    2026, UNISTR('Spanish'),
    UNISTR('Guatemala is located in Central America. Its capital is Guatemala City. The primary official or common language is Spanish.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'GU', 'GUM', UNISTR('Oceania'), UNISTR('Gu\00E5h\00E5n'),
    UNISTR('Guam'), UNISTR('Hag\00E5t\00F1a'), 170185,
    2026, UNISTR('Chamorro, English, Spanish'),
    UNISTR('Guam is located in Micronesia. Its capital is Hag\00E5t\00F1a. Official or common languages include Chamorro, English, and Spanish.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'GW', 'GNB', UNISTR('Africa'), UNISTR('Guin\00E9-Bissau'),
    UNISTR('Guinea-Bissau'), UNISTR('Bissau'), 2297808,
    2026, UNISTR('Portuguese, Upper Guinea Creole'),
    UNISTR('Guinea-Bissau is located in Western Africa. Its capital is Bissau. Official or common languages include Portuguese and Upper Guinea Creole.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'GY', 'GUY', UNISTR('Americas'), UNISTR('Guyana'),
    UNISTR('Guyana'), UNISTR('Georgetown'), 840890,
    2026, UNISTR('English'),
    UNISTR('Guyana is located in South America. Its capital is Georgetown. The primary official or common language is English.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'HK', 'HKG', UNISTR('Asia'), UNISTR('\9999\6E2F'),
    UNISTR('Hong Kong'), UNISTR('City of Victoria'), 7378602,
    2026, UNISTR('English, Chinese'),
    UNISTR('Hong Kong is located in Eastern Asia. Its capital is City of Victoria. Official or common languages include English and Chinese.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'HM', 'HMD', UNISTR('Antarctica'), UNISTR('Heard Island and McDonald Islands'),
    UNISTR('Heard Island and McDonald Islands'), NULL, 0,
    2024, UNISTR('English'),
    UNISTR('Heard Island and McDonald Islands is located in Antarctic and has no permanent capital. The primary official or common language is English.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'HN', 'HND', UNISTR('Americas'), UNISTR('Honduras'),
    UNISTR('Honduras'), UNISTR('Tegucigalpa'), 11184760,
    2026, UNISTR('Spanish'),
    UNISTR('Honduras is located in Central America. Its capital is Tegucigalpa. The primary official or common language is Spanish.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'HR', 'HRV', UNISTR('Europe'), UNISTR('Hrvatska'),
    UNISTR('Croatia'), UNISTR('Zagreb'), 3822345,
    2026, UNISTR('Croatian'),
    UNISTR('Croatia is located in Southeast Europe. Its capital is Zagreb. The primary official or common language is Croatian.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'HT', 'HTI', UNISTR('Americas'), UNISTR('Ha\00EFti'),
    UNISTR('Haiti'), UNISTR('Port-au-Prince'), 12037506,
    2026, UNISTR('French, Haitian Creole'),
    UNISTR('Haiti is located in Caribbean. Its capital is Port-au-Prince. Official or common languages include French and Haitian Creole.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'HU', 'HUN', UNISTR('Europe'), UNISTR('Magyarorsz\00E1g'),
    UNISTR('Hungary'), UNISTR('Budapest'), 9585818,
    2026, UNISTR('Hungarian'),
    UNISTR('Hungary is located in Central Europe. Its capital is Budapest. The primary official or common language is Hungarian.')
  )
SELECT 1 FROM dual;

INSERT ALL
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'ID', 'IDN', UNISTR('Asia'), UNISTR('Indonesia'),
    UNISTR('Indonesia'), UNISTR('Jakarta'), 287886782,
    2026, UNISTR('Indonesian'),
    UNISTR('Indonesia is located in South-Eastern Asia. Its capital is Jakarta. The primary official or common language is Indonesian.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'IE', 'IRL', UNISTR('Europe'), UNISTR('\00C9ire'),
    UNISTR('Ireland'), UNISTR('Dublin'), 5356950,
    2026, UNISTR('English, Irish'),
    UNISTR('Ireland is located in Northern Europe. Its capital is Dublin. Official or common languages include English and Irish.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'IL', 'ISR', UNISTR('Asia'), UNISTR('\0625\0633\0631\0627\0626\064A\0644'),
    UNISTR('Israel'), UNISTR('Jerusalem'), 9647689,
    2026, UNISTR('Arabic, Hebrew'),
    UNISTR('Israel is located in Western Asia. Its capital is Jerusalem. Official or common languages include Arabic and Hebrew.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'IM', 'IMN', UNISTR('Europe'), UNISTR('Mannin'),
    UNISTR('Isle of Man'), UNISTR('Douglas'), 84054,
    2026, UNISTR('English, Manx'),
    UNISTR('Isle of Man is located in Northern Europe. Its capital is Douglas. Official or common languages include English and Manx.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'IN', 'IND', UNISTR('Asia'), UNISTR('\092D\093E\0930\0924'),
    UNISTR('India'), UNISTR('New Delhi'), 1476625576,
    2026, UNISTR('English, Hindi, Tamil'),
    UNISTR('India is located in Southern Asia. Its capital is New Delhi. Official or common languages include English, Hindi, and Tamil.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'IO', 'IOT', UNISTR('Africa'), UNISTR('British Indian Ocean Territory'),
    UNISTR('British Indian Ocean Territory'), UNISTR('Diego Garcia'), 0,
    2024, UNISTR('English'),
    UNISTR('British Indian Ocean Territory is located in Eastern Africa. Its capital is Diego Garcia. The primary official or common language is English.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'IQ', 'IRQ', UNISTR('Asia'), UNISTR('\0627\0644\0639\0631\0627\0642'),
    UNISTR('Iraq'), UNISTR('Baghdad'), 48007437,
    2026, UNISTR('Arabic, Aramaic, Sorani'),
    UNISTR('Iraq is located in Western Asia. Its capital is Baghdad. Official or common languages include Arabic, Aramaic, and Sorani.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'IR', 'IRN', UNISTR('Asia'), UNISTR('\0627\06CC\0631\0627\0646'),
    UNISTR('Iran'), UNISTR('Tehran'), 93168497,
    2026, UNISTR('Persian (Farsi)'),
    UNISTR('Iran is located in Southern Asia. Its capital is Tehran. The primary official or common language is Persian (Farsi).')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'IS', 'ISL', UNISTR('Europe'), UNISTR('\00CDsland'),
    UNISTR('Iceland'), UNISTR('Reykjavik'), 402329,
    2026, UNISTR('Icelandic'),
    UNISTR('Iceland is located in Northern Europe. Its capital is Reykjavik. The primary official or common language is Icelandic.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'IT', 'ITA', UNISTR('Europe'), UNISTR('Italia'),
    UNISTR('Italy'), UNISTR('Rome'), 58926166,
    2026, UNISTR('Italian'),
    UNISTR('Italy is located in Southern Europe. Its capital is Rome. The primary official or common language is Italian.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'JE', 'JEY', UNISTR('Europe'), UNISTR('J\00E8rri'),
    UNISTR('Jersey'), UNISTR('Saint Helier'), 104106,
    2026, UNISTR('English, French, J\00E8rriais'),
    UNISTR('Jersey is located in Northern Europe. Its capital is Saint Helier. Official or common languages include English, French, and J\00E8rriais.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'JM', 'JAM', UNISTR('Americas'), UNISTR('Jamaica'),
    UNISTR('Jamaica'), UNISTR('Kingston'), 2833404,
    2026, UNISTR('English, Jamaican Patois'),
    UNISTR('Jamaica is located in Caribbean. Its capital is Kingston. Official or common languages include English and Jamaican Patois.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'JO', 'JOR', UNISTR('Asia'), UNISTR('\0627\0644\0623\0631\062F\0646'),
    UNISTR('Jordan'), UNISTR('Amman'), 11589532,
    2026, UNISTR('Arabic'),
    UNISTR('Jordan is located in Western Asia. Its capital is Amman. The primary official or common language is Arabic.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'JP', 'JPN', UNISTR('Asia'), UNISTR('\65E5\672C'),
    UNISTR('Japan'), UNISTR('Tokyo'), 122427731,
    2026, UNISTR('Japanese'),
    UNISTR('Japan is located in Eastern Asia. Its capital is Tokyo. The primary official or common language is Japanese.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'KE', 'KEN', UNISTR('Africa'), UNISTR('Kenya'),
    UNISTR('Kenya'), UNISTR('Nairobi'), 58636412,
    2026, UNISTR('English, Swahili'),
    UNISTR('Kenya is located in Eastern Africa. Its capital is Nairobi. Official or common languages include English and Swahili.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'KG', 'KGZ', UNISTR('Asia'), UNISTR('\041A\044B\0440\0433\044B\0437\0441\0442\0430\043D'),
    UNISTR('Kyrgyzstan'), UNISTR('Bishkek'), 7400464,
    2026, UNISTR('Kyrgyz, Russian'),
    UNISTR('Kyrgyzstan is located in Central Asia. Its capital is Bishkek. Official or common languages include Kyrgyz and Russian.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'KH', 'KHM', UNISTR('Asia'), UNISTR('K\00E2mp\016Dch\00E9a'),
    UNISTR('Cambodia'), UNISTR('Phnom Penh'), 18051219,
    2026, UNISTR('Khmer'),
    UNISTR('Cambodia is located in South-Eastern Asia. Its capital is Phnom Penh. The primary official or common language is Khmer.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'KI', 'KIR', UNISTR('Oceania'), UNISTR('Kiribati'),
    UNISTR('Kiribati'), UNISTR('South Tarawa'), 138445,
    2026, UNISTR('English, Gilbertese'),
    UNISTR('Kiribati is located in Micronesia. Its capital is South Tarawa. Official or common languages include English and Gilbertese.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'KM', 'COM', UNISTR('Africa'), UNISTR('\062C\0632\0631 \0627\0644\0642\0645\0631'),
    UNISTR('Comoros'), UNISTR('Moroni'), 899010,
    2026, UNISTR('Arabic, French, Comorian'),
    UNISTR('Comoros is located in Eastern Africa. Its capital is Moroni. Official or common languages include Arabic, French, and Comorian.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'KN', 'KNA', UNISTR('Americas'), UNISTR('Saint Kitts and Nevis'),
    UNISTR('Saint Kitts and Nevis'), UNISTR('Basseterre'), 46992,
    2026, UNISTR('English'),
    UNISTR('Saint Kitts and Nevis is located in Caribbean. Its capital is Basseterre. The primary official or common language is English.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'KP', 'PRK', UNISTR('Asia'), UNISTR('\C870\C120'),
    UNISTR('North Korea'), UNISTR('Pyongyang'), 26633691,
    2026, UNISTR('Korean'),
    UNISTR('North Korea is located in Eastern Asia. Its capital is Pyongyang. The primary official or common language is Korean.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'KR', 'KOR', UNISTR('Asia'), UNISTR('\D55C\AD6D'),
    UNISTR('South Korea'), UNISTR('Seoul'), 51600388,
    2026, UNISTR('Korean'),
    UNISTR('South Korea is located in Eastern Asia. Its capital is Seoul. The primary official or common language is Korean.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'KW', 'KWT', UNISTR('Asia'), UNISTR('\0627\0644\0643\0648\064A\062A'),
    UNISTR('Kuwait'), UNISTR('Kuwait City'), 5102773,
    2026, UNISTR('Arabic'),
    UNISTR('Kuwait is located in Western Asia. Its capital is Kuwait City. The primary official or common language is Arabic.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'KY', 'CYM', UNISTR('Americas'), UNISTR('Cayman Islands'),
    UNISTR('Cayman Islands'), UNISTR('George Town'), 77196,
    2026, UNISTR('English'),
    UNISTR('Cayman Islands is located in Caribbean. Its capital is George Town. The primary official or common language is English.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'KZ', 'KAZ', UNISTR('Asia'), UNISTR('\049A\0430\0437\0430\049B\0441\0442\0430\043D'),
    UNISTR('Kazakhstan'), UNISTR('Astana'), 21083626,
    2026, UNISTR('Kazakh, Russian'),
    UNISTR('Kazakhstan is located in Central Asia. Its capital is Astana. Official or common languages include Kazakh and Russian.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'LA', 'LAO', UNISTR('Asia'), UNISTR('\0EAA\0E9B\0E9B\0EA5\0EB2\0EA7'),
    UNISTR('Laos'), UNISTR('Vientiane'), 7974018,
    2026, UNISTR('Lao'),
    UNISTR('Laos is located in South-Eastern Asia. Its capital is Vientiane. The primary official or common language is Lao.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'LB', 'LBN', UNISTR('Asia'), UNISTR('\0644\0628\0646\0627\0646'),
    UNISTR('Lebanon'), UNISTR('Beirut'), 5897467,
    2026, UNISTR('Arabic, French'),
    UNISTR('Lebanon is located in Western Asia. Its capital is Beirut. Official or common languages include Arabic and French.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'LC', 'LCA', UNISTR('Americas'), UNISTR('Saint Lucia'),
    UNISTR('Saint Lucia'), UNISTR('Castries'), 180488,
    2026, UNISTR('English'),
    UNISTR('Saint Lucia is located in Caribbean. Its capital is Castries. The primary official or common language is English.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'LI', 'LIE', UNISTR('Europe'), UNISTR('Liechtenstein'),
    UNISTR('Liechtenstein'), UNISTR('Vaduz'), 40368,
    2026, UNISTR('German'),
    UNISTR('Liechtenstein is located in Western Europe. Its capital is Vaduz. The primary official or common language is German.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'LK', 'LKA', UNISTR('Asia'), UNISTR('\0DC1\0DCA\200D\0DBB\0DD3 \0DBD\0D82\0D9A\0DCF\0DC0'),
    UNISTR('Sri Lanka'), UNISTR('Colombo'), 23348315,
    2026, UNISTR('Sinhala, Tamil'),
    UNISTR('Sri Lanka is located in Southern Asia. Its capital is Colombo. Official or common languages include Sinhala and Tamil.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'LR', 'LBR', UNISTR('Africa'), UNISTR('Liberia'),
    UNISTR('Liberia'), UNISTR('Monrovia'), 5853949,
    2026, UNISTR('English'),
    UNISTR('Liberia is located in Western Africa. Its capital is Monrovia. The primary official or common language is English.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'LS', 'LSO', UNISTR('Africa'), UNISTR('Lesotho'),
    UNISTR('Lesotho'), UNISTR('Maseru'), 2389336,
    2026, UNISTR('English, Sotho'),
    UNISTR('Lesotho is located in Southern Africa. Its capital is Maseru. Official or common languages include English and Sotho.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'LT', 'LTU', UNISTR('Europe'), UNISTR('Lietuva'),
    UNISTR('Lithuania'), UNISTR('Vilnius'), 2797338,
    2026, UNISTR('Lithuanian'),
    UNISTR('Lithuania is located in Northern Europe. Its capital is Vilnius. The primary official or common language is Lithuanian.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'LU', 'LUX', UNISTR('Europe'), UNISTR('Luxemburg'),
    UNISTR('Luxembourg'), UNISTR('Luxembourg'), 687448,
    2026, UNISTR('German, French, Luxembourgish'),
    UNISTR('Luxembourg is located in Western Europe. Its capital is Luxembourg. Official or common languages include German, French, and Luxembourgish.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'LV', 'LVA', UNISTR('Europe'), UNISTR('Latvija'),
    UNISTR('Latvia'), UNISTR('Riga'), 1835935,
    2026, UNISTR('Latvian'),
    UNISTR('Latvia is located in Northern Europe. Its capital is Riga. The primary official or common language is Latvian.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'LY', 'LBY', UNISTR('Africa'), UNISTR('\0644\064A\0628\064A\0627'),
    UNISTR('Libya'), UNISTR('Tripoli'), 7539852,
    2026, UNISTR('Arabic'),
    UNISTR('Libya is located in Northern Africa. Its capital is Tripoli. The primary official or common language is Arabic.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'MA', 'MAR', UNISTR('Africa'), UNISTR('\0627\0644\0645\063A\0631\0628'),
    UNISTR('Morocco'), UNISTR('Rabat'), 38762441,
    2026, UNISTR('Arabic, Berber'),
    UNISTR('Morocco is located in Northern Africa. Its capital is Rabat. Official or common languages include Arabic and Berber.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'MC', 'MCO', UNISTR('Europe'), UNISTR('Monaco'),
    UNISTR('Monaco'), UNISTR('Monaco'), 38087,
    2026, UNISTR('French'),
    UNISTR('Monaco is located in Western Europe. Its capital is Monaco. The primary official or common language is French.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'MD', 'MDA', UNISTR('Europe'), UNISTR('Moldova'),
    UNISTR('Moldova'), UNISTR('Chi\0219in\0103u'), 2961253,
    2026, UNISTR('Moldavian'),
    UNISTR('Moldova is located in Eastern Europe. Its capital is Chi\0219in\0103u. The primary official or common language is Moldavian.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'ME', 'MNE', UNISTR('Europe'), UNISTR('\0426\0440\043D\0430 \0413\043E\0440\0430'),
    UNISTR('Montenegro'), UNISTR('Podgorica'), 626233,
    2026, UNISTR('Montenegrin'),
    UNISTR('Montenegro is located in Southeast Europe. Its capital is Podgorica. The primary official or common language is Montenegrin.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'MF', 'MAF', UNISTR('Americas'), UNISTR('Saint-Martin'),
    UNISTR('Saint Martin'), UNISTR('Marigot'), 23898,
    2026, UNISTR('French'),
    UNISTR('Saint Martin is located in Caribbean. Its capital is Marigot. The primary official or common language is French.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'MG', 'MDG', UNISTR('Africa'), UNISTR('Madagasikara'),
    UNISTR('Madagascar'), UNISTR('Antananarivo'), 33522052,
    2026, UNISTR('French, Malagasy'),
    UNISTR('Madagascar is located in Eastern Africa. Its capital is Antananarivo. Official or common languages include French and Malagasy.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'MH', 'MHL', UNISTR('Oceania'), UNISTR('M\0327aje\013C'),
    UNISTR('Marshall Islands'), UNISTR('Majuro'), 35075,
    2026, UNISTR('English, Marshallese'),
    UNISTR('Marshall Islands is located in Micronesia. Its capital is Majuro. Official or common languages include English and Marshallese.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'MK', 'MKD', UNISTR('Europe'), UNISTR('\041C\0430\043A\0435\0434\043E\043D\0438\0458\0430'),
    UNISTR('North Macedonia'), UNISTR('Skopje'), 1804062,
    2026, UNISTR('Macedonian'),
    UNISTR('North Macedonia is located in Southeast Europe. Its capital is Skopje. The primary official or common language is Macedonian.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'ML', 'MLI', UNISTR('Africa'), UNISTR('Mali'),
    UNISTR('Mali'), UNISTR('Bamako'), 25932275,
    2026, UNISTR('French'),
    UNISTR('Mali is located in Western Africa. Its capital is Bamako. The primary official or common language is French.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'MM', 'MMR', UNISTR('Asia'), UNISTR('\1019\103C\1014\103A\1019\102C'),
    UNISTR('Myanmar'), UNISTR('Naypyidaw'), 55184819,
    2026, UNISTR('Burmese'),
    UNISTR('Myanmar is located in South-Eastern Asia. Its capital is Naypyidaw. The primary official or common language is Burmese.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'MN', 'MNG', UNISTR('Asia'), UNISTR('\041C\043E\043D\0433\043E\043B \0443\043B\0441'),
    UNISTR('Mongolia'), UNISTR('Ulan Bator'), 3556798,
    2026, UNISTR('Mongolian'),
    UNISTR('Mongolia is located in Eastern Asia. Its capital is Ulan Bator. The primary official or common language is Mongolian.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'MO', 'MAC', UNISTR('Asia'), UNISTR('\6FB3\95E8'),
    UNISTR('Macau'), NULL, 723188,
    2026, UNISTR('Portuguese, Chinese'),
    UNISTR('Macau is located in Eastern Asia and has no permanent capital. Official or common languages include Portuguese and Chinese.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'MP', 'MNP', UNISTR('Oceania'), UNISTR('Na Islas Mari\00E5nas'),
    UNISTR('Northern Mariana Islands'), UNISTR('Saipan'), 42914,
    2026, UNISTR('Carolinian, Chamorro, English'),
    UNISTR('Northern Mariana Islands is located in Micronesia. Its capital is Saipan. Official or common languages include Carolinian, Chamorro, and English.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'MQ', 'MTQ', UNISTR('Americas'), UNISTR('Martinique'),
    UNISTR('Martinique'), UNISTR('Fort-de-France'), 337711,
    2026, UNISTR('French'),
    UNISTR('Martinique is located in Caribbean. Its capital is Fort-de-France. The primary official or common language is French.')
  )
SELECT 1 FROM dual;

INSERT ALL
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'MR', 'MRT', UNISTR('Africa'), UNISTR('\0645\0648\0631\064A\062A\0627\0646\064A\0627'),
    UNISTR('Mauritania'), UNISTR('Nouakchott'), 5461319,
    2026, UNISTR('Arabic'),
    UNISTR('Mauritania is located in Western Africa. Its capital is Nouakchott. The primary official or common language is Arabic.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'MS', 'MSR', UNISTR('Americas'), UNISTR('Montserrat'),
    UNISTR('Montserrat'), UNISTR('Plymouth'), 4328,
    2026, UNISTR('English'),
    UNISTR('Montserrat is located in Caribbean. Its capital is Plymouth. The primary official or common language is English.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'MT', 'MLT', UNISTR('Europe'), UNISTR('Malta'),
    UNISTR('Malta'), UNISTR('Valletta'), 549011,
    2026, UNISTR('English, Maltese'),
    UNISTR('Malta is located in Southern Europe. Its capital is Valletta. Official or common languages include English and Maltese.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'MU', 'MUS', UNISTR('Africa'), UNISTR('Maurice'),
    UNISTR('Mauritius'), UNISTR('Port Louis'), 1265059,
    2026, UNISTR('English, French, Mauritian Creole'),
    UNISTR('Mauritius is located in Eastern Africa. Its capital is Port Louis. Official or common languages include English, French, and Mauritian Creole.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'MV', 'MDV', UNISTR('Asia'), UNISTR('\078B\07A8\0788\07AC\0780\07A8\0783\07A7\0787\07B0\0796\07AD\078E\07AC'),
    UNISTR('Maldives'), UNISTR('Mal\00E9'), 531517,
    2026, UNISTR('Maldivian'),
    UNISTR('Maldives is located in Southern Asia. Its capital is Mal\00E9. The primary official or common language is Maldivian.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'MW', 'MWI', UNISTR('Africa'), UNISTR('Mala\0175i'),
    UNISTR('Malawi'), UNISTR('Lilongwe'), 22785535,
    2026, UNISTR('English, Chewa'),
    UNISTR('Malawi is located in Eastern Africa. Its capital is Lilongwe. Official or common languages include English and Chewa.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'MX', 'MEX', UNISTR('Americas'), UNISTR('M\00E9xico'),
    UNISTR('Mexico'), UNISTR('Mexico City'), 132997658,
    2026, UNISTR('Spanish'),
    UNISTR('Mexico is located in North America. Its capital is Mexico City. The primary official or common language is Spanish.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'MY', 'MYS', UNISTR('Asia'), UNISTR('\0645\0644\064A\0633\064A\0627'),
    UNISTR('Malaysia'), UNISTR('Kuala Lumpur'), 36385115,
    2026, UNISTR('English, Malay'),
    UNISTR('Malaysia is located in South-Eastern Asia. Its capital is Kuala Lumpur. Official or common languages include English and Malay.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'MZ', 'MOZ', UNISTR('Africa'), UNISTR('Mo\00E7ambique'),
    UNISTR('Mozambique'), UNISTR('Maputo'), 36639850,
    2026, UNISTR('Portuguese'),
    UNISTR('Mozambique is located in Eastern Africa. Its capital is Maputo. The primary official or common language is Portuguese.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'NA', 'NAM', UNISTR('Africa'), UNISTR('Namibi\00EB'),
    UNISTR('Namibia'), UNISTR('Windhoek'), 3153246,
    2026, UNISTR('Afrikaans, German, English, Herero, Khoekhoe, Kwangali, Lozi, Ndonga, Tswana'),
    UNISTR('Namibia is located in Southern Africa. Its capital is Windhoek. Official or common languages include Afrikaans, German, English, and other local languages.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'NC', 'NCL', UNISTR('Oceania'), UNISTR('Nouvelle-Cal\00E9donie'),
    UNISTR('New Caledonia'), UNISTR('Noum\00E9a'), 297892,
    2026, UNISTR('French'),
    UNISTR('New Caledonia is located in Melanesia. Its capital is Noum\00E9a. The primary official or common language is French.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'NE', 'NER', UNISTR('Africa'), UNISTR('Niger'),
    UNISTR('Niger'), UNISTR('Niamey'), 28814878,
    2026, UNISTR('French'),
    UNISTR('Niger is located in Western Africa. Its capital is Niamey. The primary official or common language is French.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'NF', 'NFK', UNISTR('Oceania'), UNISTR('Norf''k Ailen'),
    UNISTR('Norfolk Island'), UNISTR('Kingston'), 2200,
    2024, UNISTR('English, Norfuk'),
    UNISTR('Norfolk Island is located in Australia and New Zealand. Its capital is Kingston. Official or common languages include English and Norfuk.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'NG', 'NGA', UNISTR('Africa'), UNISTR('Nigeria'),
    UNISTR('Nigeria'), UNISTR('Abuja'), 242431832,
    2026, UNISTR('English'),
    UNISTR('Nigeria is located in Western Africa. Its capital is Abuja. The primary official or common language is English.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'NI', 'NIC', UNISTR('Americas'), UNISTR('Nicaragua'),
    UNISTR('Nicaragua'), UNISTR('Managua'), 7097329,
    2026, UNISTR('Spanish'),
    UNISTR('Nicaragua is located in Central America. Its capital is Managua. The primary official or common language is Spanish.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'NL', 'NLD', UNISTR('Europe'), UNISTR('Nederland'),
    UNISTR('Netherlands'), UNISTR('Amsterdam'), 18448775,
    2026, UNISTR('Dutch'),
    UNISTR('Netherlands is located in Western Europe. Its capital is Amsterdam. The primary official or common language is Dutch.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'NO', 'NOR', UNISTR('Europe'), UNISTR('Noreg'),
    UNISTR('Norway'), UNISTR('Oslo'), 5652989,
    2026, UNISTR('Norwegian Nynorsk, Norwegian Bokm\00E5l, Sami'),
    UNISTR('Norway is located in Northern Europe. Its capital is Oslo. Official or common languages include Norwegian Nynorsk, Norwegian Bokm\00E5l, and Sami.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'NP', 'NPL', UNISTR('Asia'), UNISTR('\0928\0947\092A\093E\0932'),
    UNISTR('Nepal'), UNISTR('Kathmandu'), 29629410,
    2026, UNISTR('Nepali'),
    UNISTR('Nepal is located in Southern Asia. Its capital is Kathmandu. The primary official or common language is Nepali.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'NR', 'NRU', UNISTR('Oceania'), UNISTR('Nauru'),
    UNISTR('Nauru'), UNISTR('Yaren'), 12101,
    2026, UNISTR('English, Nauru'),
    UNISTR('Nauru is located in Micronesia. Its capital is Yaren. Official or common languages include English and Nauru.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'NU', 'NIU', UNISTR('Oceania'), UNISTR('Niu\0113'),
    UNISTR('Niue'), UNISTR('Alofi'), 1822,
    2026, UNISTR('English, Niuean'),
    UNISTR('Niue is located in Polynesia. Its capital is Alofi. Official or common languages include English and Niuean.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'NZ', 'NZL', UNISTR('Oceania'), UNISTR('Aotearoa'),
    UNISTR('New Zealand'), UNISTR('Wellington'), 5287479,
    2026, UNISTR('English, M\0101ori, New Zealand Sign Language'),
    UNISTR('New Zealand is located in Australia and New Zealand. Its capital is Wellington. Official or common languages include English, M\0101ori, and New Zealand Sign Language.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'OM', 'OMN', UNISTR('Asia'), UNISTR('\0639\0645\0627\0646'),
    UNISTR('Oman'), UNISTR('Muscat'), 5671458,
    2026, UNISTR('Arabic'),
    UNISTR('Oman is located in Western Asia. Its capital is Muscat. The primary official or common language is Arabic.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'PA', 'PAN', UNISTR('Americas'), UNISTR('Panam\00E1'),
    UNISTR('Panama'), UNISTR('Panama City'), 4625718,
    2026, UNISTR('Spanish'),
    UNISTR('Panama is located in Central America. Its capital is Panama City. The primary official or common language is Spanish.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'PE', 'PER', UNISTR('Americas'), UNISTR('Piruw'),
    UNISTR('Peru'), UNISTR('Lima'), 34922148,
    2026, UNISTR('Aymara, Quechua, Spanish'),
    UNISTR('Peru is located in South America. Its capital is Lima. Official or common languages include Aymara, Quechua, and Spanish.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'PF', 'PYF', UNISTR('Oceania'), UNISTR('Polyn\00E9sie fran\00E7aise'),
    UNISTR('French Polynesia'), UNISTR('Papeet\0113'), 283076,
    2026, UNISTR('French'),
    UNISTR('French Polynesia is located in Polynesia. Its capital is Papeet\0113. The primary official or common language is French.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'PG', 'PNG', UNISTR('Oceania'), UNISTR('Papua Niu Gini'),
    UNISTR('Papua New Guinea'), UNISTR('Port Moresby'), 10947848,
    2026, UNISTR('English, Hiri Motu, Tok Pisin'),
    UNISTR('Papua New Guinea is located in Melanesia. Its capital is Port Moresby. Official or common languages include English, Hiri Motu, and Tok Pisin.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'PH', 'PHL', UNISTR('Asia'), UNISTR('Pilipinas'),
    UNISTR('Philippines'), UNISTR('Manila'), 117724472,
    2026, UNISTR('English, Filipino'),
    UNISTR('Philippines is located in South-Eastern Asia. Its capital is Manila. Official or common languages include English and Filipino.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'PK', 'PAK', UNISTR('Asia'), UNISTR('\067E\0627\0643\0633\062A\0627\0646'),
    UNISTR('Pakistan'), UNISTR('Islamabad'), 259299792,
    2026, UNISTR('English, Urdu'),
    UNISTR('Pakistan is located in Southern Asia. Its capital is Islamabad. Official or common languages include English and Urdu.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'PL', 'POL', UNISTR('Europe'), UNISTR('Polska'),
    UNISTR('Poland'), UNISTR('Warsaw'), 37843188,
    2026, UNISTR('Polish'),
    UNISTR('Poland is located in Central Europe. Its capital is Warsaw. The primary official or common language is Polish.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'PM', 'SPM', UNISTR('Americas'), UNISTR('Saint-Pierre-et-Miquelon'),
    UNISTR('Saint Pierre and Miquelon'), UNISTR('Saint-Pierre'), 5513,
    2026, UNISTR('French'),
    UNISTR('Saint Pierre and Miquelon is located in North America. Its capital is Saint-Pierre. The primary official or common language is French.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'PN', 'PCN', UNISTR('Oceania'), UNISTR('Pitcairn Islands'),
    UNISTR('Pitcairn Islands'), UNISTR('Adamstown'), 35,
    2024, UNISTR('English'),
    UNISTR('Pitcairn Islands is located in Polynesia. Its capital is Adamstown. The primary official or common language is English.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'PR', 'PRI', UNISTR('Americas'), UNISTR('Puerto Rico'),
    UNISTR('Puerto Rico'), UNISTR('San Juan'), 3222688,
    2026, UNISTR('English, Spanish'),
    UNISTR('Puerto Rico is located in Caribbean. Its capital is San Juan. Official or common languages include English and Spanish.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'PS', 'PSE', UNISTR('Asia'), UNISTR('\0641\0644\0633\0637\064A\0646'),
    UNISTR('Palestine'), UNISTR('Ramallah'), 5692790,
    2026, UNISTR('Arabic'),
    UNISTR('Palestine is located in Western Asia. Its capital is Ramallah. The primary official or common language is Arabic.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'PT', 'PRT', UNISTR('Europe'), UNISTR('Portugal'),
    UNISTR('Portugal'), UNISTR('Lisbon'), 10395362,
    2026, UNISTR('Portuguese'),
    UNISTR('Portugal is located in Southern Europe. Its capital is Lisbon. The primary official or common language is Portuguese.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'PW', 'PLW', UNISTR('Oceania'), UNISTR('Belau'),
    UNISTR('Palau'), UNISTR('Ngerulmud'), 17614,
    2026, UNISTR('English, Palauan'),
    UNISTR('Palau is located in Micronesia. Its capital is Ngerulmud. Official or common languages include English and Palauan.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'PY', 'PRY', UNISTR('Americas'), UNISTR('Paragu\00E1i'),
    UNISTR('Paraguay'), UNISTR('Asunci\00F3n'), 7095279,
    2026, UNISTR('Guaran\00ED, Spanish'),
    UNISTR('Paraguay is located in South America. Its capital is Asunci\00F3n. Official or common languages include Guaran\00ED and Spanish.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'QA', 'QAT', UNISTR('Asia'), UNISTR('\0642\0637\0631'),
    UNISTR('Qatar'), UNISTR('Doha'), 3173559,
    2026, UNISTR('Arabic'),
    UNISTR('Qatar is located in Western Asia. Its capital is Doha. The primary official or common language is Arabic.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'RE', 'REU', UNISTR('Africa'), UNISTR('La R\00E9union'),
    UNISTR('R\00E9union'), UNISTR('Saint-Denis'), 886298,
    2026, UNISTR('French'),
    UNISTR('R\00E9union is located in Eastern Africa. Its capital is Saint-Denis. The primary official or common language is French.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'RO', 'ROU', UNISTR('Europe'), UNISTR('Rom\00E2nia'),
    UNISTR('Romania'), UNISTR('Bucharest'), 18800605,
    2026, UNISTR('Romanian'),
    UNISTR('Romania is located in Southeast Europe. Its capital is Bucharest. The primary official or common language is Romanian.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'RS', 'SRB', UNISTR('Europe'), UNISTR('\0421\0440\0431\0438\0458\0430'),
    UNISTR('Serbia'), UNISTR('Belgrade'), 6641964,
    2026, UNISTR('Serbian'),
    UNISTR('Serbia is located in Southeast Europe. Its capital is Belgrade. The primary official or common language is Serbian.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'RU', 'RUS', UNISTR('Europe'), UNISTR('\0420\043E\0441\0441\0438\044F'),
    UNISTR('Russia'), UNISTR('Moscow'), 143394458,
    2026, UNISTR('Russian'),
    UNISTR('Russia is located in Eastern Europe. Its capital is Moscow. The primary official or common language is Russian.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'RW', 'RWA', UNISTR('Africa'), UNISTR('Rwanda'),
    UNISTR('Rwanda'), UNISTR('Kigali'), 14889693,
    2026, UNISTR('English, French, Kinyarwanda'),
    UNISTR('Rwanda is located in Eastern Africa. Its capital is Kigali. Official or common languages include English, French, and Kinyarwanda.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'SA', 'SAU', UNISTR('Asia'), UNISTR('\0627\0644\0633\0639\0648\062F\064A\0629'),
    UNISTR('Saudi Arabia'), UNISTR('Riyadh'), 35165787,
    2026, UNISTR('Arabic'),
    UNISTR('Saudi Arabia is located in Western Asia. Its capital is Riyadh. The primary official or common language is Arabic.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'SB', 'SLB', UNISTR('Oceania'), UNISTR('Solomon Islands'),
    UNISTR('Solomon Islands'), UNISTR('Honiara'), 858288,
    2026, UNISTR('English'),
    UNISTR('Solomon Islands is located in Melanesia. Its capital is Honiara. The primary official or common language is English.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'SC', 'SYC', UNISTR('Africa'), UNISTR('Sesel'),
    UNISTR('Seychelles'), UNISTR('Victoria'), 134959,
    2026, UNISTR('Seychellois Creole, English, French'),
    UNISTR('Seychelles is located in Eastern Africa. Its capital is Victoria. Official or common languages include Seychellois Creole, English, and French.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'SD', 'SDN', UNISTR('Africa'), UNISTR('\0627\0644\0633\0648\062F\0627\0646'),
    UNISTR('Sudan'), UNISTR('Khartoum'), 53282719,
    2026, UNISTR('Arabic, English'),
    UNISTR('Sudan is located in Northern Africa. Its capital is Khartoum. Official or common languages include Arabic and English.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'SE', 'SWE', UNISTR('Europe'), UNISTR('Sverige'),
    UNISTR('Sweden'), UNISTR('Stockholm'), 10701046,
    2026, UNISTR('Swedish'),
    UNISTR('Sweden is located in Northern Europe. Its capital is Stockholm. The primary official or common language is Swedish.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'SG', 'SGP', UNISTR('Asia'), UNISTR('Singapura'),
    UNISTR('Singapore'), UNISTR('Singapore'), 5905748,
    2026, UNISTR('English, Malay, Tamil, Chinese'),
    UNISTR('Singapore is located in South-Eastern Asia. Its capital is Singapore. Official or common languages include English, Malay, Tamil, and other local languages.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'SH', 'SHN', UNISTR('Africa'), UNISTR('Saint Helena, Ascension and Tristan da Cunha'),
    UNISTR('Saint Helena, Ascension and Tristan da Cunha'), UNISTR('Jamestown'), 5148,
    2026, UNISTR('English'),
    UNISTR('Saint Helena, Ascension and Tristan da Cunha is located in Western Africa. Its capital is Jamestown. The primary official or common language is English.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'SI', 'SVN', UNISTR('Europe'), UNISTR('Slovenija'),
    UNISTR('Slovenia'), UNISTR('Ljubljana'), 2114574,
    2026, UNISTR('Slovene'),
    UNISTR('Slovenia is located in Central Europe. Its capital is Ljubljana. The primary official or common language is Slovene.')
  )
SELECT 1 FROM dual;

INSERT ALL
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'SJ', 'SJM', UNISTR('Europe'), UNISTR('Svalbard og Jan Mayen'),
    UNISTR('Svalbard and Jan Mayen'), UNISTR('Longyearbyen'), 2600,
    2024, UNISTR('Norwegian'),
    UNISTR('Svalbard and Jan Mayen is located in Northern Europe. Its capital is Longyearbyen. The primary official or common language is Norwegian.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'SK', 'SVK', UNISTR('Europe'), UNISTR('Slovensko'),
    UNISTR('Slovakia'), UNISTR('Bratislava'), 5451342,
    2026, UNISTR('Slovak'),
    UNISTR('Slovakia is located in Central Europe. Its capital is Bratislava. The primary official or common language is Slovak.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'SL', 'SLE', UNISTR('Africa'), UNISTR('Sierra Leone'),
    UNISTR('Sierra Leone'), UNISTR('Freetown'), 8996744,
    2026, UNISTR('English'),
    UNISTR('Sierra Leone is located in Western Africa. Its capital is Freetown. The primary official or common language is English.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'SM', 'SMR', UNISTR('Europe'), UNISTR('San Marino'),
    UNISTR('San Marino'), UNISTR('City of San Marino'), 33605,
    2026, UNISTR('Italian'),
    UNISTR('San Marino is located in Southern Europe. Its capital is City of San Marino. The primary official or common language is Italian.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'SN', 'SEN', UNISTR('Africa'), UNISTR('S\00E9n\00E9gal'),
    UNISTR('Senegal'), UNISTR('Dakar'), 19366548,
    2026, UNISTR('French'),
    UNISTR('Senegal is located in Western Africa. Its capital is Dakar. The primary official or common language is French.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'SO', 'SOM', UNISTR('Africa'), UNISTR('\0627\0644\0635\0648\0645\0627\0644'),
    UNISTR('Somalia'), UNISTR('Mogadishu'), 20305907,
    2026, UNISTR('Arabic, Somali'),
    UNISTR('Somalia is located in Eastern Africa. Its capital is Mogadishu. Official or common languages include Arabic and Somali.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'SR', 'SUR', UNISTR('Americas'), UNISTR('Suriname'),
    UNISTR('Suriname'), UNISTR('Paramaribo'), 645256,
    2026, UNISTR('Dutch'),
    UNISTR('Suriname is located in South America. Its capital is Paramaribo. The primary official or common language is Dutch.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'SS', 'SSD', UNISTR('Africa'), UNISTR('South Sudan'),
    UNISTR('South Sudan'), UNISTR('Juba'), 12436037,
    2026, UNISTR('English'),
    UNISTR('South Sudan is located in Middle Africa. Its capital is Juba. The primary official or common language is English.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'ST', 'STP', UNISTR('Africa'), UNISTR('S\00E3o Tom\00E9 e Pr\00EDncipe'),
    UNISTR('S\00E3o Tom\00E9 and Pr\00EDncipe'), UNISTR('S\00E3o Tom\00E9'), 244994,
    2026, UNISTR('Portuguese'),
    UNISTR('S\00E3o Tom\00E9 and Pr\00EDncipe is located in Middle Africa. Its capital is S\00E3o Tom\00E9. The primary official or common language is Portuguese.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'SV', 'SLV', UNISTR('Americas'), UNISTR('El Salvador'),
    UNISTR('El Salvador'), UNISTR('San Salvador'), 6391254,
    2026, UNISTR('Spanish'),
    UNISTR('El Salvador is located in Central America. Its capital is San Salvador. The primary official or common language is Spanish.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'SX', 'SXM', UNISTR('Americas'), UNISTR('Saint-Martin'),
    UNISTR('Sint Maarten'), UNISTR('Philipsburg'), 44447,
    2026, UNISTR('English, French, Dutch'),
    UNISTR('Sint Maarten is located in Caribbean. Its capital is Philipsburg. Official or common languages include English, French, and Dutch.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'SY', 'SYR', UNISTR('Asia'), UNISTR('\0633\0648\0631\064A\0627'),
    UNISTR('Syria'), UNISTR('Damascus'), 26472497,
    2026, UNISTR('Arabic'),
    UNISTR('Syria is located in Western Asia. Its capital is Damascus. The primary official or common language is Arabic.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'SZ', 'SWZ', UNISTR('Africa'), UNISTR('eSwatini'),
    UNISTR('Eswatini'), UNISTR('Lobamba'), 1269859,
    2026, UNISTR('English, Swazi'),
    UNISTR('Eswatini is located in Southern Africa. Its capital is Lobamba. Official or common languages include English and Swazi.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'TC', 'TCA', UNISTR('Americas'), UNISTR('Turks and Caicos Islands'),
    UNISTR('Turks and Caicos Islands'), UNISTR('Cockburn Town'), 47148,
    2026, UNISTR('English'),
    UNISTR('Turks and Caicos Islands is located in Caribbean. Its capital is Cockburn Town. The primary official or common language is English.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'TD', 'TCD', UNISTR('Africa'), UNISTR('\062A\0634\0627\062F'),
    UNISTR('Chad'), UNISTR('N''Djamena'), 21560380,
    2026, UNISTR('Arabic, French'),
    UNISTR('Chad is located in Middle Africa. Its capital is N''Djamena. Official or common languages include Arabic and French.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'TF', 'ATF', UNISTR('Antarctica'), UNISTR('Terres australes et antarctiques fran\00E7aises'),
    UNISTR('French Southern and Antarctic Lands'), UNISTR('Port-aux-Fran\00E7ais'), 0,
    2024, UNISTR('French'),
    UNISTR('French Southern and Antarctic Lands is located in Antarctic. Its capital is Port-aux-Fran\00E7ais. The primary official or common language is French.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'TG', 'TGO', UNISTR('Africa'), UNISTR('Togo'),
    UNISTR('Togo'), UNISTR('Lom\00E9'), 9930918,
    2026, UNISTR('French'),
    UNISTR('Togo is located in Western Africa. Its capital is Lom\00E9. The primary official or common language is French.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'TH', 'THA', UNISTR('Asia'), UNISTR('\0E1B\0E23\0E30\0E40\0E17\0E28\0E44\0E17\0E22'),
    UNISTR('Thailand'), UNISTR('Bangkok'), 71559614,
    2026, UNISTR('Thai'),
    UNISTR('Thailand is located in South-Eastern Asia. Its capital is Bangkok. The primary official or common language is Thai.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'TJ', 'TJK', UNISTR('Asia'), UNISTR('\0422\0430\0434\0436\0438\043A\0438\0441\0442\0430\043D'),
    UNISTR('Tajikistan'), UNISTR('Dushanbe'), 10978598,
    2026, UNISTR('Russian, Tajik'),
    UNISTR('Tajikistan is located in Central Asia. Its capital is Dushanbe. Official or common languages include Russian and Tajik.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'TK', 'TKL', UNISTR('Oceania'), UNISTR('Tokelau'),
    UNISTR('Tokelau'), UNISTR('Fakaofo'), 2691,
    2026, UNISTR('English, Samoan, Tokelauan'),
    UNISTR('Tokelau is located in Polynesia. Its capital is Fakaofo. Official or common languages include English, Samoan, and Tokelauan.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'TL', 'TLS', UNISTR('Asia'), UNISTR('Tim\00F3r-Leste'),
    UNISTR('Timor-Leste'), UNISTR('Dili'), 1436923,
    2026, UNISTR('Portuguese, Tetum'),
    UNISTR('Timor-Leste is located in South-Eastern Asia. Its capital is Dili. Official or common languages include Portuguese and Tetum.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'TM', 'TKM', UNISTR('Asia'), UNISTR('\0422\0443\0440\043A\043C\0435\043D\0438\044F'),
    UNISTR('Turkmenistan'), UNISTR('Ashgabat'), 7736632,
    2026, UNISTR('Russian, Turkmen'),
    UNISTR('Turkmenistan is located in Central Asia. Its capital is Ashgabat. Official or common languages include Russian and Turkmen.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'TN', 'TUN', UNISTR('Africa'), UNISTR('\062A\0648\0646\0633'),
    UNISTR('Tunisia'), UNISTR('Tunis'), 12415138,
    2026, UNISTR('Arabic'),
    UNISTR('Tunisia is located in Northern Africa. Its capital is Tunis. The primary official or common language is Arabic.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'TO', 'TON', UNISTR('Oceania'), UNISTR('Tonga'),
    UNISTR('Tonga'), UNISTR('Nuku''alofa'), 103291,
    2026, UNISTR('English, Tongan'),
    UNISTR('Tonga is located in Polynesia. Its capital is Nuku''alofa. Official or common languages include English and Tongan.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'TR', 'TUR', UNISTR('Asia'), UNISTR('T\00FCrkiye'),
    UNISTR('Turkey'), UNISTR('Ankara'), 87926082,
    2026, UNISTR('Turkish'),
    UNISTR('Turkey is located in Western Asia. Its capital is Ankara. The primary official or common language is Turkish.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'TT', 'TTO', UNISTR('Americas'), UNISTR('Trinidad and Tobago'),
    UNISTR('Trinidad and Tobago'), UNISTR('Port of Spain'), 1513268,
    2026, UNISTR('English'),
    UNISTR('Trinidad and Tobago is located in Caribbean. Its capital is Port of Spain. The primary official or common language is English.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'TV', 'TUV', UNISTR('Oceania'), UNISTR('Tuvalu'),
    UNISTR('Tuvalu'), UNISTR('Funafuti'), 9362,
    2026, UNISTR('English, Tuvaluan'),
    UNISTR('Tuvalu is located in Polynesia. Its capital is Funafuti. Official or common languages include English and Tuvaluan.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'TW', 'TWN', UNISTR('Asia'), UNISTR('\53F0\7063'),
    UNISTR('Taiwan'), UNISTR('Taipei'), 23011292,
    2026, UNISTR('Chinese'),
    UNISTR('Taiwan is located in Eastern Asia. Its capital is Taipei. The primary official or common language is Chinese.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'TZ', 'TZA', UNISTR('Africa'), UNISTR('Tanzania'),
    UNISTR('Tanzania'), UNISTR('Dodoma'), 72563780,
    2026, UNISTR('English, Swahili'),
    UNISTR('Tanzania is located in Eastern Africa. Its capital is Dodoma. Official or common languages include English and Swahili.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'UA', 'UKR', UNISTR('Europe'), UNISTR('\0423\043A\0440\0430\0457\043D\0430'),
    UNISTR('Ukraine'), UNISTR('Kyiv'), 39535848,
    2026, UNISTR('Ukrainian'),
    UNISTR('Ukraine is located in Eastern Europe. Its capital is Kyiv. The primary official or common language is Ukrainian.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'UG', 'UGA', UNISTR('Africa'), UNISTR('Uganda'),
    UNISTR('Uganda'), UNISTR('Kampala'), 52761470,
    2026, UNISTR('English, Swahili'),
    UNISTR('Uganda is located in Eastern Africa. Its capital is Kampala. Official or common languages include English and Swahili.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'UM', 'UMI', UNISTR('Americas'), UNISTR('United States Minor Outlying Islands'),
    UNISTR('United States Minor Outlying Islands'), NULL, 0,
    2024, UNISTR('English'),
    UNISTR('United States Minor Outlying Islands is located in North America and has no permanent capital. The primary official or common language is English.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'US', 'USA', UNISTR('Americas'), UNISTR('United States'),
    UNISTR('United States'), UNISTR('Washington D.C.'), 349035494,
    2026, UNISTR('English'),
    UNISTR('United States is located in North America. Its capital is Washington D.C. The primary official or common language is English.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'UY', 'URY', UNISTR('Americas'), UNISTR('Uruguay'),
    UNISTR('Uruguay'), UNISTR('Montevideo'), 3382537,
    2026, UNISTR('Spanish'),
    UNISTR('Uruguay is located in South America. Its capital is Montevideo. The primary official or common language is Spanish.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'UZ', 'UZB', UNISTR('Asia'), UNISTR('\0423\0437\0431\0435\043A\0438\0441\0442\0430\043D'),
    UNISTR('Uzbekistan'), UNISTR('Tashkent'), 37724223,
    2026, UNISTR('Russian, Uzbek'),
    UNISTR('Uzbekistan is located in Central Asia. Its capital is Tashkent. Official or common languages include Russian and Uzbek.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'VA', 'VAT', UNISTR('Europe'), UNISTR('Vaticano'),
    UNISTR('Vatican City'), UNISTR('Vatican City'), 506,
    2026, UNISTR('Italian, Latin'),
    UNISTR('Vatican City is located in Southern Europe. Its capital is Vatican City. Official or common languages include Italian and Latin.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'VC', 'VCT', UNISTR('Americas'), UNISTR('Saint Vincent and the Grenadines'),
    UNISTR('Saint Vincent and the Grenadines'), UNISTR('Kingstown'), 99244,
    2026, UNISTR('English'),
    UNISTR('Saint Vincent and the Grenadines is located in Caribbean. Its capital is Kingstown. The primary official or common language is English.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'VE', 'VEN', UNISTR('Americas'), UNISTR('Venezuela'),
    UNISTR('Venezuela'), UNISTR('Caracas'), 28633711,
    2026, UNISTR('Spanish'),
    UNISTR('Venezuela is located in South America. Its capital is Caracas. The primary official or common language is Spanish.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'VG', 'VGB', UNISTR('Americas'), UNISTR('British Virgin Islands'),
    UNISTR('British Virgin Islands'), UNISTR('Road Town'), 39936,
    2026, UNISTR('English'),
    UNISTR('British Virgin Islands is located in Caribbean. Its capital is Road Town. The primary official or common language is English.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'VI', 'VIR', UNISTR('Americas'), UNISTR('United States Virgin Islands'),
    UNISTR('United States Virgin Islands'), UNISTR('Charlotte Amalie'), 83400,
    2026, UNISTR('English'),
    UNISTR('United States Virgin Islands is located in Caribbean. Its capital is Charlotte Amalie. The primary official or common language is English.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'VN', 'VNM', UNISTR('Asia'), UNISTR('Vi\1EC7t Nam'),
    UNISTR('Vietnam'), UNISTR('Hanoi'), 102177431,
    2026, UNISTR('Vietnamese'),
    UNISTR('Vietnam is located in South-Eastern Asia. Its capital is Hanoi. The primary official or common language is Vietnamese.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'VU', 'VUT', UNISTR('Oceania'), UNISTR('Vanuatu'),
    UNISTR('Vanuatu'), UNISTR('Port Vila'), 342564,
    2026, UNISTR('Bislama, English, French'),
    UNISTR('Vanuatu is located in Melanesia. Its capital is Port Vila. Official or common languages include Bislama, English, and French.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'WF', 'WLF', UNISTR('Oceania'), UNISTR('Wallis et Futuna'),
    UNISTR('Wallis and Futuna'), UNISTR('Mata-Utu'), 11113,
    2026, UNISTR('French'),
    UNISTR('Wallis and Futuna is located in Polynesia. Its capital is Mata-Utu. The primary official or common language is French.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'WS', 'WSM', UNISTR('Oceania'), UNISTR('S\0101moa'),
    UNISTR('Samoa'), UNISTR('Apia'), 220528,
    2026, UNISTR('English, Samoan'),
    UNISTR('Samoa is located in Polynesia. Its capital is Apia. Official or common languages include English and Samoan.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'YE', 'YEM', UNISTR('Asia'), UNISTR('\0627\0644\064A\0645\0646'),
    UNISTR('Yemen'), UNISTR('Sana''a'), 42961653,
    2026, UNISTR('Arabic'),
    UNISTR('Yemen is located in Western Asia. Its capital is Sana''a. The primary official or common language is Arabic.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'YT', 'MYT', UNISTR('Africa'), UNISTR('Mayotte'),
    UNISTR('Mayotte'), UNISTR('Mamoudzou'), 347536,
    2026, UNISTR('French'),
    UNISTR('Mayotte is located in Eastern Africa. Its capital is Mamoudzou. The primary official or common language is French.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'ZA', 'ZAF', UNISTR('Africa'), UNISTR('Sewula Afrika'),
    UNISTR('South Africa'), UNISTR('Pretoria'), 65453084,
    2026, UNISTR('Afrikaans, English, Southern Ndebele, Northern Sotho, Southern Sotho, Swazi, Tswana, Tsonga, Venda, Xhosa, Zulu'),
    UNISTR('South Africa is located in Southern Africa. Its capital is Pretoria. Official or common languages include Afrikaans, English, Southern Ndebele, and other local languages.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'ZM', 'ZMB', UNISTR('Africa'), UNISTR('Zambia'),
    UNISTR('Zambia'), UNISTR('Lusaka'), 22521915,
    2026, UNISTR('English'),
    UNISTR('Zambia is located in Eastern Africa. Its capital is Lusaka. The primary official or common language is English.')
  )
  into eba_srch_txt_countries (
    country_code_alpha2, country_code_alpha3, region, country_name,
    country_name_english, capital_city, estimated_population,
    estimated_population_year, official_or_common_language, description
  ) VALUES (
    'ZW', 'ZWE', UNISTR('Africa'), UNISTR('Zimbabwe'),
    UNISTR('Zimbabwe'), UNISTR('Harare'), 17273580,
    2026, UNISTR('Chibarwe, English, Kalanga, Khoisan, Ndau, Northern Ndebele, Chewa, Shona, Sotho, Tonga, Tswana, Tsonga, Venda, Xhosa, Zimbabwean Sign Language'),
    UNISTR('Zimbabwe is located in Eastern Africa. Its capital is Harare. Official or common languages include Chibarwe, English, Kalanga, and other local languages.')
  )
SELECT 1 FROM dual;

COMMIT;


