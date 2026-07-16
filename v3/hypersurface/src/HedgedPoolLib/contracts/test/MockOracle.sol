import {IOracle} from "../interfaces/IGamma.sol";

contract MockOracle is IOracle {
    uint256 public price;
    function isLockingPeriodOver(
        address _asset,
        uint256 _expiryTimestamp
    ) external view override returns (bool) {
        return true;
    }

    function isDisputePeriodOver(
        address _asset,
        uint256 _expiryTimestamp
    ) external view override returns (bool) {
        return true;
    }

    function getExpiryPrice(
        address _asset,
        uint256 _expiryTimestamp
    ) external view override returns (uint256, bool) {
        return (0, true);
    }

    function getDisputer() external view override returns (address) {
        return address(0);
    }

    function getPricer(
        address _asset
    ) external view override returns (address) {
        return address(0);
    }

    function getPrice(address _asset) external view override returns (uint256) {
        return price;
    }

    function getPricerLockingPeriod(
        address _pricer
    ) external view override returns (uint256) {
        return 0;
    }

    function getPricerDisputePeriod(
        address _pricer
    ) external view override returns (uint256) {
        return 0;
    }

    function getChainlinkRoundData(
        address _asset,
        uint80 _roundId
    ) external view override returns (uint256, uint256) {
        return (0, 0);
    }

    function setExpiryPrice(
        address _asset,
        uint256 _expiryTimestamp,
        uint256 _price
    ) external override {
        return;
    }

    function setPrice(uint256 _price) external {
        price = _price;
    }
}
