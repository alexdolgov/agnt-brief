// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.15;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable2Step.sol";

interface IVault is IERC20 {
    // returns value of one wALP in ALP tokens
    function pricePerShare() external view returns (uint256);
}

interface IGlpManager {
    // Returns AUM of ALP for calculating price. Assuming returns USD 30 decimals.
    function getAumInUsdg(bool maximise) external view returns (uint256);
}

contract wALPOracle is Ownable2Step {
    /* ========== STATE VARIABLES ========== */

    /// @notice Amped's ALP Manager, use this to pull our total AUM in ALP.
    IGlpManager public immutable alpManager;

    /// @notice Address for ALP, Amped's LP token and the underlying for our wALP vault.
    IERC20 public immutable alp;

    /// @notice Address of our wALP, a Yearn vault token.
    IVault public immutable wALP;

    /* ========== CONSTRUCTOR ========== */

    constructor(IGlpManager _alpManager, IERC20 _alp, IVault _wALP) Ownable2Step() {
        require(address(_alpManager) != address(0), "Zero address: alpManager");
        require(address(_alp) != address(0), "Zero address: alp");
        require(address(_wALP) != address(0), "Zero address: wALP");
        alpManager = _alpManager;
        alp = _alp;
        wALP = _wALP;
    }

    /* ========== VIEWS ========== */

    /// @notice Decimals of our price (standard 18 decimals)
    function decimals() external pure returns (uint8) {
        return 18;
    }

    /// @notice Gets the current price of wALP collateral using Chainlink interface
    /// @dev Return our price using a standard Chainlink aggregator interface
    /// @return The price of wALP in USD (18 decimals)
    function latestRoundData()
        public
        view
        returns (uint80, int256, uint256, uint256, uint80)
    {
        return (
            uint80(block.number),
            int256(getLivePrice()),
            block.timestamp,
            block.timestamp,
            uint80(block.number)
        );
    }

    /// @notice Gets the current price of wALP collateral
    /// @dev Pulls the total AUM in Amped's ALP, calculates ALP price, multiplies by wALP share price.
    /// @return Price of wALP in USD (18 decimals)
    function getLivePrice() public view returns (uint256) {
        uint256 aum_usd_30_decimals = alpManager.getAumInUsdg(false);
        uint256 alp_supply_18_decimals = alp.totalSupply();

        if (alp_supply_18_decimals == 0) {
            return 1e18;
        }

        uint256 alp_price_usd_30_decimals = (aum_usd_30_decimals * 1e18) / alp_supply_18_decimals;

        uint256 sharePrice_alp_18_decimals = wALP.pricePerShare();

        uint256 wALP_price_usd_30_decimals = (alp_price_usd_30_decimals * sharePrice_alp_18_decimals) / 1e18;

        return wALP_price_usd_30_decimals / 1e12;
    }

    function renounceOwnership() public override onlyOwner {
        revert("wALPOracle: Renouncing ownership is disabled");
    }
}