// SPDX-License-Identifier: MIT

pragma solidity 0.6.11;

import "../Dependencies/SafeMath.sol";
import "../Interfaces/ILOANToken.sol";
import "../Dependencies/Ownable.sol";
import "../Dependencies/Pausable.sol";
import "../Dependencies/console.sol";
import "../Interfaces/ICommunityPoints.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";


/*
* @dev Deprecated. Use LockupAirdrop instead.
*
* The lockup contract architecture is a modified implemention of the forked LockupContract.
* 
* The token balance is distributed linearly in 365 period with 30 days of claim marging after that.
*/
contract LockupSacrifice is Ownable, Pausable, ReentrancyGuard {

    using SafeMath for uint;

    string constant public NAME = "LockupSacrifice";
    uint256 constant public PERIOD = 365 days;
    uint256 constant public CLAIM_MARGIN = 30 days;

    uint constant internal _1_UNIT = 1e18; //1 token - 18 decimals
    uint internal _1_MILLION = 1e24;
    uint256 public START_TIME;

    ILOANToken public loanToken;
    ICommunityPoints public communityPoints;

    // --- Structs and Enums ---
    struct BeneficiaryData {
        uint256 withdrawn;
    }

    mapping(address => BeneficiaryData) internal _beneficiaries;

    // --- Events ---
    event SacrificeEntitlementReleased(address _beneficiary, uint _LOANwithdrawal, uint index, uint timestamp);

    constructor() public{
        START_TIME = block.timestamp;
    }

    function _getWithdrawAvailable(address _beneficiary) internal view returns (uint) {
        if(block.timestamp > START_TIME.add(PERIOD).add(CLAIM_MARGIN)){
            return 0;
        }

        (bool registered_, uint256 entitlementTotal_) = communityPoints.getEntitlements(_beneficiary);

        require(registered_, "INVALID_BENEFICIARY");
        require(entitlementTotal_ > 0, "INVALID_BENEFICIARY");

        uint256 ratio = block.timestamp.sub(START_TIME).mul(_1_UNIT).div(PERIOD);
        if(ratio > _1_UNIT){
            ratio = _1_UNIT;
        }
        require(ratio > 0, "Ratio should be greater than 0");

        uint256 alreadyWithdraw = _beneficiaries[_beneficiary].withdrawn;
        uint256 entitlement = (entitlementTotal_ * ratio).div(_1_UNIT);

        return entitlement - alreadyWithdraw;
    }

    function canWithdraw() external view returns (bool) {
        return _getWithdrawAvailable(msg.sender) > 0;
    }

    function claim() external whenNotPaused nonReentrant {
        require(block.timestamp <= START_TIME.add(PERIOD).add(CLAIM_MARGIN), "CLAIM_PERIOD_EXPIRED");

        uint entitlement_ = _getWithdrawAvailable(msg.sender);
        require(entitlement_ > 0, "NO_WITHDRAW_AVAILABLE");

        if (loanToken.transfer(msg.sender, entitlement_)) {
            _beneficiaries[msg.sender].withdrawn = _beneficiaries[msg.sender].withdrawn + entitlement_;
            emit SacrificeEntitlementReleased(msg.sender, entitlement_, 0, block.timestamp);
        }
    }

    function setParams(address _loanTokenAddress, address _communityPoints) onlyOwner whenPaused external {
        loanToken = ILOANToken(_loanTokenAddress);
        communityPoints = ICommunityPoints(_communityPoints);
        _unpause();
        _renounceOwnership();
    }

    function getLOANtokenEntitlements(address _beneficiary) external view returns (uint256) {
        (,uint256 entitlementTotal_) = communityPoints.getEntitlements(_beneficiary);
        return entitlementTotal_;
    }

    function getLOANtokenWithdrawnEntitlements(address _beneficiary) external view returns (bool) {
        (,uint256 entitlementTotal_) = communityPoints.getEntitlements(_beneficiary);
        return (entitlementTotal_ - _beneficiaries[_beneficiary].withdrawn) > 0;
    }

    function getEntitlementToWithdraw(address _beneficiary) external view returns (uint256) {
        (,uint256 entitlementTotal_) = communityPoints.getEntitlements(_beneficiary);
        return entitlementTotal_ - _beneficiaries[_beneficiary].withdrawn;
    }

    function getWithdrawAvailable(address _beneficiary) external view returns (uint256) {
        return _getWithdrawAvailable(_beneficiary);
    }
}
// 2025 Liquid Loans