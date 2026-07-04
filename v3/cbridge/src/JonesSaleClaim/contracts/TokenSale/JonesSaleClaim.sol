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

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {SafeMath} from "@openzeppelin/contracts/utils/math/SafeMath.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import {IJonesTokenSaleV3} from "./IJonesTokenSaleV3.sol";

/// @author Jones DAO
/// @title Jones Sale Claim
contract JonesSaleClaim is ReentrancyGuard {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    // Jones Token
    IERC20 public jones;

    // Multisig
    address public owner;

    // Sale contract
    IJonesTokenSaleV3 public saleContract;

    // Claims open state
    bool public claimsActive;

    // Claims mapping
    mapping(address => uint256) public claims;

    /// Emits on token claim
    /// @param claimer contract caller claiming on behalf of beneficiary
    /// @param beneficiary receives the tokens they claimed
    /// @param amount token amount beneficiary claimed
    event TokenClaim(
        address indexed claimer,
        address indexed beneficiary,
        uint256 amount
    );

    /// Emits on refund claim
    /// @param claimer contract caller claiming on behalf of beneficiary
    /// @param beneficiary receives the tokens they claimed
    /// @param amount eth amount beneficiary claimed
    event EthRefundClaim(
        address indexed claimer,
        address indexed beneficiary,
        uint256 amount
    );

    /// @param _jones Jones
    /// @param _owner multisig
    /// @param _saleContract sale contract
    constructor(
        address _jones,
        address _owner,
        IJonesTokenSaleV3 _saleContract
    ) {
        require(_owner != address(0), "invalid owner address");
        require(_jones != address(0), "invalid token address");

        jones = IERC20(_jones);
        owner = _owner;
        saleContract = _saleContract;
        claimsActive = false;
    }

    /// Owner deposit excess eth
    receive() external payable {
        require(msg.sender == owner, "only owner can call this function");
    }

    /// Claim
    /// @param beneficiary user that receives the tokens
    function claim(address beneficiary)
        external
        nonReentrant
        returns (uint256)
    {
        require(claims[beneficiary] == 0, "already claimed");
        require(claimsActive, "cannot claim yet");

        uint256 beneficiaryClaim = saleContract.claimAmountJones(beneficiary);
        uint256 beneficiaryClaimEth = saleContract.claimAmountEth(beneficiary);
        require(
            beneficiaryClaim.add(beneficiaryClaimEth) > 0,
            "did not take part in the sale"
        );

        // Set claimed for user
        claims[beneficiary] = 1;

        // claim JONES
        jones.safeTransfer(beneficiary, beneficiaryClaim);
        emit TokenClaim(msg.sender, beneficiary, beneficiaryClaim);

        // claim excess ETH
        if (beneficiaryClaimEth > 0) {
            payable(beneficiary).transfer(beneficiaryClaimEth);
            emit EthRefundClaim(msg.sender, beneficiary, beneficiaryClaimEth);
        }

        return beneficiaryClaim;
    }

    function setClaimsActive(bool _state) external {
        require(msg.sender == owner, "only owner can call this function");
        claimsActive = _state;
    }

    /// @dev Multisig can withdraw ETH and tokens in case something goes wrong
    function ownerWithdraw() external {
        require(owner == msg.sender, "caller is not the owner");

        uint256 ethBalance = payable(address(this)).balance;
        payable(msg.sender).transfer(ethBalance);

        uint256 jonesBalance = jones.balanceOf(address(this));
        jones.safeTransfer(msg.sender, jonesBalance);
    }
}
