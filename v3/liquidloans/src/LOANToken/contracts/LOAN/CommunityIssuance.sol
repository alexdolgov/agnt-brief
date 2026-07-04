// SPDX-License-Identifier: MIT

pragma solidity 0.6.11;

import "../Interfaces/ILOANToken.sol";
import "../Interfaces/ICommunityIssuance.sol";
import "../Dependencies/BaseMath.sol";
import "../Dependencies/LiquidLoansMath.sol";
import "../Dependencies/Ownable.sol";
import "../Dependencies/CheckContract.sol";
import "../Dependencies/SafeMath.sol";


contract CommunityIssuance is ICommunityIssuance, Ownable, CheckContract, BaseMath {
    using SafeMath for uint;

    string constant public NAME = "CommunityIssuance";

    uint constant public SECONDS_IN_ONE_MINUTE = 60;

    /* 
    * The community LOAN supply cap is the starting balance of the Community Issuance contract.
    * It should be minted to this contract by LOANToken, when the token is deployed.
    * 
    * Set to 1.650 Trillion (30% of total LOAN supply).
    */
    uint constant public LOANSupplyCap = 1650e27; // 1.650 Trillion
    
    ILOANToken public loanToken;

    address public stabilityPoolAddress;

    uint public totalLOANIssued;
    uint public immutable deploymentTime;

    // --- Events ---

    event LOANTokenAddressSet(address _loanTokenAddress);
    event StabilityPoolAddressSet(address _stabilityPoolAddress);
    event TotalLOANIssuedUpdated(uint _totalLOANIssued);

    // --- Functions ---

    constructor() public {
        deploymentTime = block.timestamp;
    }

    function setAddresses
    (
        address _loanTokenAddress, 
        address _stabilityPoolAddress
    ) 
        external 
        onlyOwner 
        override 
    {
        checkContract(_loanTokenAddress);
        checkContract(_stabilityPoolAddress);

        loanToken = ILOANToken(_loanTokenAddress);
        stabilityPoolAddress = _stabilityPoolAddress;

        // When LOANToken is deployed, it should have transferred CommunityIssuance's LOAN entitlement
        uint LOANBalance = loanToken.balanceOf(address(this));
        assert(LOANBalance >= LOANSupplyCap);

        emit LOANTokenAddressSet(_loanTokenAddress);
        emit StabilityPoolAddressSet(_stabilityPoolAddress);

        _renounceOwnership();
    }

    function issueLOAN() external override returns (uint) {
        _requireCallerIsStabilityPool();

        uint latestTotalLOANIssued = LOANSupplyCap.mul(_getCumulativeIssuanceFraction()).div(DECIMAL_PRECISION);
        uint issuance = latestTotalLOANIssued.sub(totalLOANIssued);

        totalLOANIssued = latestTotalLOANIssued;
        emit TotalLOANIssuedUpdated(latestTotalLOANIssued);
        
        return issuance;
    }

    /*
     * Returns the cumulative emission fraction since deployment
     *
     * Hybrid piecewise-linear schedule:
     *  ────────────────────────────────────────────────
     *  Years elapsed     Emission fraction of total
     *  0  → 3 years      0%  → 55%
     *  3  → 5 years      55% → 75%
     *  5  → 10 years     75% → 100%
     *  >10 years         capped at 100%
     *
     * Emission starts immediately at deployment and increases smoothly with time.
     */
    function _getCumulativeIssuanceFraction() internal view returns (uint) {

        uint timePassedInMinutes = block.timestamp.sub(deploymentTime).div(SECONDS_IN_ONE_MINUTE);
        uint elapsedYears = timePassedInMinutes.mul(DECIMAL_PRECISION).div(525600); // Scaled to 1e18
        uint fraction;

        // --- Phase 1: 0 → 3 years (0% → 55%) ---
        if (elapsedYears < uint(3).mul(DECIMAL_PRECISION)) {
            fraction = elapsedYears.mul(55e16).div(uint(3).mul(DECIMAL_PRECISION));
        }
        // --- Phase 2: 3 → 5 years (55% → 75%) ---
        else if (elapsedYears < uint(5).mul(DECIMAL_PRECISION)) {
            uint timeSince3 = elapsedYears.sub(uint(3).mul(DECIMAL_PRECISION));
            fraction = uint(55e16).add(timeSince3.mul(20e16).div(uint(2).mul(DECIMAL_PRECISION)));
        }
        // --- Phase 3: 5 → 10 years (75% → 100%) ---
        else if (elapsedYears < uint(10).mul(DECIMAL_PRECISION)) {
            uint timeSince5 = elapsedYears.sub(uint(5).mul(DECIMAL_PRECISION));
            // Correct total increment = 25% over 5 years → 0.05 per year
            fraction = uint(75e16).add(timeSince5.mul(25e16).div(uint(5).mul(DECIMAL_PRECISION)));
        }
        // --- After 10 years ---
        else {
            fraction = DECIMAL_PRECISION;
        }

        if (fraction > DECIMAL_PRECISION) {
            fraction = DECIMAL_PRECISION;
        }

        return fraction;

    }

    function sendLOAN(address _account, uint _LOANamount) external override {
        _requireCallerIsStabilityPool();

        loanToken.transfer(_account, _LOANamount);
    }

    // --- 'require' functions ---

    function _requireCallerIsStabilityPool() internal view {
        require(msg.sender == stabilityPoolAddress, "CommunityIssuance: caller is not SP");
    }
}
// 2025 Liquid Loans