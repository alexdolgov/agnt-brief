// SPDX-License-Identifier: GPL-3.0
/*                            ******@@@@@@@@@**@*
                        ***@@@@@@@@@@@@@@@@@@@@@@**
                     *@@@@@@**@@@@@@@@@@@@@@@@@*@@@*
                  *@@@@@@@@@@@@@@@@@@@*@@@@@@@@@@@*@**
                 *@@@@@@@@@@@@@@@@@@*@@@@@@@@@@@@@@@@@*
                **@@@@@@@@@@@@@@@@@*@@@@@@@@@@@@@@@@@@@**
                **@@@@@@@@@@@@@@@*@@@@@@@@@@@@@@@@@@@@@@@*
                **@@@@@@@@@@@@@@@@*************************
                **@@@@@@@@***********************************
                 *@@@***********************&@@@@@@@@@@@@@@@****,    ******@@@@*
           *********************@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*************
      ***@@@@@@@@@@@@@@@*****@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@****@@*********
   **@@@@@**********************@@@@*****************#@@@@**********
  *@@******************************************************
 *@************************************
 @*******************************
 *@*************************
   *********************

    /$$$$$                                               /$$$$$$$   /$$$$$$   /$$$$$$
   |__  $$                                              | $$__  $$ /$$__  $$ /$$__  $$
      | $$  /$$$$$$  /$$$$$$$   /$$$$$$   /$$$$$$$      | $$  \ $$| $$  \ $$| $$  \ $$
      | $$ /$$__  $$| $$__  $$ /$$__  $$ /$$_____/      | $$  | $$| $$$$$$$$| $$  | $$
 /$$  | $$| $$  \ $$| $$  \ $$| $$$$$$$$|  $$$$$$       | $$  | $$| $$__  $$| $$  | $$
| $$  | $$| $$  | $$| $$  | $$| $$_____/ \____  $$      | $$  | $$| $$  | $$| $$  | $$
|  $$$$$$/|  $$$$$$/| $$  | $$|  $$$$$$$ /$$$$$$$/      | $$$$$$$/| $$  | $$|  $$$$$$/
 \______/  \______/ |__/  |__/ \_______/|_______/       |_______/ |__/  |__/ \______/
*/
pragma solidity ^0.8.2;

interface IJonesTokenSaleV3 {
    function isWhitelistedAddressDeposited(address _user)
        external
        view
        returns (bool);

    function depositForWhitelistedAddress(
        uint256 index,
        address beneficiary,
        bytes32[] calldata merkleProof
    ) external payable;

    function deposit(address beneficiary) external payable;

    function claim(address beneficiary) external returns (uint256);

    function withdraw() external;

    function setMaxDeposits(uint256 _maxDeposits) external;

    function claimAmountJones(address beneficiary)
        external
        view
        returns (uint256);

    function claimAmountEth(address beneficiary)
        external
        view
        returns (uint256);

    function depositableLeftWhitelist(address beneficiary)
        external
        view
        returns (uint256);
}
