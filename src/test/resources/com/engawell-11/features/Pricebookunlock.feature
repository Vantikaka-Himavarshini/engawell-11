
@feature_pricebook_unlock
Feature: Pricebookunlock

  Background: 
    Given the user is in the pricebook management section

  @unlock-pricebook
  Scenario Outline: Pricebook unlock
    When the user selects a locked pricebook from the list
    And the user clicks on the "Unlock" button
    And the user confirms the unlock action in the modal
    Then the pricebook status should change to "Unlocked"
    When the user attempts to edit a previously locked charge
    And the user saves the changes made to the charge
    Then the updated charge details should be reflected in the pricebook

    Examples:
      | locked_pricebook | charge_to_edit |
      | Pricebook A     | Proppant       |

@edit_proppant_charge
Scenario Outline: Pricebook unlock
  When the user selects an unlocked pricebook
  And the user clicks on the proppant charge to edit
  And the user changes the name of the proppant charge
  And the user updates the rate/price of the proppant charge
  And the user saves the changes
  And the user refreshes the pricebook page
  Then the updated proppant charge details are displayed

Examples:
  | unlocked_pricebook | proppant_charge_name | proppant_charge_rate |
  | Pricebook A       | New Proppant Charge   | 100                  |

  @create_new_charge
  Scenario Outline: Pricebook unlock
    Given the pricebook manager navigates to the pricebook management section
    When the pricebook manager selects an unlocked pricebook
    And the pricebook manager clicks on the Add New Charge button
    And the pricebook manager fills in the required fields for the new charge
      | field_name_1 | field_name_2 | field_name_3 | field_name_4 | field_name_5 |
      | <field_name_1> | <field_name_2> | <field_name_3> | <field_name_4> | <field_name_5> |
    And the pricebook manager clicks on the Save button
    Then the pricebook manager verifies that the new charge is added to the pricebook
    And the pricebook manager refreshes the pricebook page
    Then the pricebook manager verifies that the new charge is still present

    Examples:
      | field_name_1 | field_name_2 | field_name_3 | field_name_4 | field_name_5 |
      | Charge 1     | Description 1 | 100           | Charge Type 1 | Notes 1      |

  @feature_pricebook_unlock
  @validate_pricebook_unlock
  Scenario Outline: Pricebook unlock
    When the user selects an unlocked pricebook
    And the user clicks on the chemical charge to edit
    And the user changes the dilution rate of the chemical charge
    And the user updates the rate price of the chemical charge
    And the user saves the changes
    And the user refreshes the pricebook page
    Then the updated chemical charge details are displayed

    Examples:
      |   |
      |   |

  @edit_equipment_charge
  Scenario Outline: Pricebook unlock
    When the pricebook manager selects an unlocked pricebook
    And the pricebook manager clicks on the equipment charge to edit
    And the pricebook manager changes the name of the equipment charge
    And the pricebook manager updates the rate/price of the equipment charge
    And the pricebook manager saves the changes
    And the pricebook manager refreshes the pricebook page
    Then the updated equipment charge details are displayed

    Examples:
      |     |
      |     |

  @feature_pricebook_unlock
  @edit_other_charge
  Scenario Outline: Pricebook unlock
    When the user selects an unlocked pricebook
    And the user clicks on an other charge to edit
    And the user changes the description of the other charge
    And the user updates the rate/price of the other charge
    And the user saves the changes
    And the user refreshes the pricebook page
    Then the updated other charge details are displayed

    Examples:
      | <pricebook> | <other_charge_description> | <other_charge_rate> |
      | Unlocked PB | New Description           | 100.00              |

  @cannot_delete_locked_charge
  Scenario Outline: Pricebook unlock
    When the user selects an unlocked pricebook
    And the user clicks on a previously locked charge to delete
    And the user clicks on the "Delete" button
    And the user confirms the delete action in the modal
    Then the charge is not removed from the pricebook
    And the user refreshes the pricebook page
    Then the charge is still present in the pricebook

    Examples:
      |                     |
      |                     |

  @feature_pricebook_unlock
  @proposal_conversion
  Scenario Outline: Pricebook unlock
    When I navigate to the proposals section
    And I select a proposal created using the locked pricebook
    And I click on the Convert to Job button
    And I confirm the conversion action
    Then the job is created successfully
    And I navigate to the jobs section
    And I locate the newly created job
    Then the job details are correct

    Examples:
      |          |
      |          |

  @unlock-pricebooks
  Scenario Outline: Pricebook unlock
    When the pricebook manager selects the first locked pricebook
    And the pricebook manager clicks on the "Unlock" button
    And the pricebook manager confirms the unlock action in the modal
    And the pricebook manager selects the second locked pricebook
    And the pricebook manager clicks on the "Unlock" button
    And the pricebook manager confirms the unlock action in the modal
    Then both pricebooks should be displayed as "Unlocked"

    Examples:
      |    |
      |    |

@view_history
Scenario Outline: Pricebook unlock
  When the user selects an unlocked pricebook
  And the user clicks on the "View History" button
  Then the history modal is opened
  And the user reviews the list of changes made to the pricebook
  And the changes include the recent edits
  And the user closes the history modal
  And the user refreshes the pricebook page
  Then the history remains accessible

  Examples:
    |  |

  @filter_charges
  Scenario Outline: Pricebook unlock
    When the user selects an unlocked pricebook
    And the user clicks on the Filter button
    And the user enters a filter criterion "<filter_criterion>"
    And the user applies the filter
    Then the displayed charges should match the filter criterion "<filter_criterion>"
    And the user clears the filter
    Then all charges should be visible again

    Examples:
      | filter_criterion |
      | charge name      |

@validate_sorting
Scenario Outline: Pricebook unlock
  When the user selects an unlocked pricebook
  And the user clicks on the "Sort" button
  And the user chooses <sorting_criterion>
  And the user applies the sorting
  Then the charges are displayed in the correct order
  When the user changes the sorting order
  Then the charges are displayed in the new order

  Examples:
    | sorting_criterion  |
    | rate               |
    | price              |

  @feature_pricebook_unlock
  @verify_charge_details
  Scenario Outline: Pricebook unlock
    When the user selects an unlocked pricebook
    And the user clicks on a charge to view details
    Then the charge details modal is opened
    And the user reviews the charge details displayed
    And the user closes the charge details modal
    And the user refreshes the pricebook page
    Then the charge details remain accessible
    And the charge details are accurate

    Examples:
      | action                |
      | unlock_pricebook     |

@unlock-pricebook
Scenario Outline: Pricebook unlock
  When the user selects a locked pricebook
  And the user clicks on the "Unlock" button
  And the user confirms the unlock action in the modal
  And the user clicks on the "Back to Pricebook List" button
  Then the pricebook list is displayed
  And the unlocked pricebook is visible in the list
  And the status of the pricebook is "Unlocked"

Examples:
  | locked_pricebook |
  | Pricebook A      |

  @pricebook_unlock_logout
  Scenario Outline: Pricebook unlock
    When the user selects a locked pricebook
    And the user clicks on the "Unlock" button
    And the user confirms the unlock action in the modal
    And the user clicks on the "Logout" button
    And the user confirms the logout action
    Then the user should be redirected to the login page
    And the session should be terminated

    Examples:
      | locked pricebook |
      | Pricebook A     |
