package com.mysearch

import com.mysearch.steps.EndUserSteps
import com.mysearch.requirements.Application.Search.SearchByKeyword

using "thucydides"

thucydides.uses_default_base_url "http://en.wiktionary.org/wiki/Wiktionary:Main_Page"
thucydides.uses_steps_from EndUserSteps
thucydides.tests_story SearchByKeyword

scenario "Looking up the definition of 'Thucydides'", {
    given "the user is on the Wikionary home page", {
        end_user.is_the_home_page()
    }
    when "the end user looks up the definition of the word 'Thucydides'", {
        end_user.looks_for "Thucydides"
    }
    then "they should see the definition of 'Thucydides", {
       end_user.should_see_definition "(c. 460 BC – c. 395 BC) A great ancient Greek historian and author of the History of the Peloponnesian War, which recounts the 5th century BC war between Sparta and Athens to the year 411 BC"
    }
}
