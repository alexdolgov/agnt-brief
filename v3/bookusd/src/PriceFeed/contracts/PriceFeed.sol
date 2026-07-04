// SPDX-License-Identifier: MIT

pragma solidity 0.6.11;

import "./Interfaces/IPriceFeed.sol";
import "./Interfaces/ITwapOracle.sol";
// import "./Dependencies/SafeMath.sol";
import "./Dependencies/Ownable.sol";
import "./Dependencies/CheckContract.sol";
import "./Dependencies/BaseMath.sol";
import "./Dependencies/LiquityMath.sol";

// import "./Dependencies/console.sol";

/*
 * PriceFeed for mainnet deployment, to be connected to Chainlink's live ETH:USD aggregator reference
 * contract, and a wrapper contract TellorCaller, which connects to TellorMaster contract.
 *
 * The PriceFeed uses Chainlink as primary oracle, and Tellor as fallback. It contains logic for
 * switching oracles based on oracle failures, timeouts, and conditions for returning to the primary
 * Chainlink oracle.
 */
contract PriceFeed is Ownable, CheckContract, BaseMath, IPriceFeed {
    using SafeMath for uint256;

    string public constant NAME = "PriceFeed";

    // Core Liquity contracts
    address borrowerOperationsAddress;
    address troveManagerAddress;

    address mintStakeShare;

    // Oracle contract
    ITwapOracle public twapOracle;

    // The last good price seen from an oracle by Liquity
    uint public lastGoodPrice;

    event LastGoodPriceUpdated(uint _lastGoodPrice);

    // --- Dependency setters ---

    function setAddresses(address _twapOracle, address _mss) external onlyOwner {
        checkContract(_twapOracle);
        checkContract(_mss);

        twapOracle = ITwapOracle(_twapOracle);
        mintStakeShare = _mss;

        _updateTwapOracle();
    }

    // --- Functions ---

    /*
     * fetchPrice():
     * Returns the latest price obtained from the Oracle. Called by Liquity functions that require a current price.
     *
     * Also callable by anyone externally.
     *
     * Non-view function - it stores the last good price seen by Liquity.
     *
     * Uses a main oracle (Chainlink) and a fallback oracle (Tellor) in case Chainlink fails. If both fail,
     * it uses the last good price seen by Liquity.
     *
     */
    function fetchPrice() external override returns (uint) {
        _updateTwapOracle();
        return lastGoodPrice;
    }

    // --- Helper functions ---

    function _updateTwapOracle() internal {
        uint256 period = twapOracle.PERIOD();
        uint256 blockTimestampLast = twapOracle.blockTimestampLast();

        // Update oracle here

        if (blockTimestampLast + period < block.timestamp) {
            twapOracle.update();
        }

        uint256 oraclePrice = twapOracle.consult(mintStakeShare, 1e18);
        if (oraclePrice > 0) {
            _storePrice(oraclePrice);
        }
    }

    function _storePrice(uint _currentPrice) internal {
        lastGoodPrice = _currentPrice;
        emit LastGoodPriceUpdated(_currentPrice);
    }
}
