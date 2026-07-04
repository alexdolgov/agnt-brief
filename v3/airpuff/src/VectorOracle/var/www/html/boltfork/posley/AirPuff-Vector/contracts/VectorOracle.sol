// SPDX-License-Identifier: MIT

pragma solidity 0.8.21;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/math/MathUpgradeable.sol";

interface IVectorStrategy {
    function getVectorSharePrice() external view returns (uint256);
}

contract VectorOracle is OwnableUpgradeable {
    using MathUpgradeable for uint256;

    uint256 public svETHlastUpdatedTimestamp;
    uint256 public vETHlastUpdatedTimestamp;
    uint256 public latestsvETHPrice;
    uint256 public vETHPrice;

    address public VectorStrategy;

    mapping(address => bool) public updateAllowed;

    event UpdateAllowed(address _allowedAddress, bool _isAllowed);
    event VectorStrategyUpdated(address _VectorStrategy);
    event svETHPriceUpdated(uint256 _price);
    event vETHPriceUpdated(uint256 _price);

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _VectorStrategy) external initializer {
        VectorStrategy = _VectorStrategy;
        updateAllowed[msg.sender] = true;

        vETHPrice = 1e18;
        vETHlastUpdatedTimestamp = block.timestamp;

        __Ownable_init();
    }

    // -- Owner Functions -- //

    function setVectorStrategy(address _VectorStrategy) external onlyOwner {
        VectorStrategy = _VectorStrategy;
        emit VectorStrategyUpdated(_VectorStrategy);
    }

    function setUpdateAllowed(address _allowedAddress, bool _isAllowed) public onlyOwner {
        updateAllowed[_allowedAddress] = _isAllowed;
        emit UpdateAllowed(_allowedAddress, _isAllowed);
    }

    // -- Public View Functions -- //

    function isUpdateAllowed(address _sender) public view returns (bool) {
        bool check = updateAllowed[_sender];
        return check;
    }

    // Note this will always return 0 before update has been called successfully for the first time.
    function consultsvETHPrice()
        external
        view
        returns (uint256)
    {
        return latestsvETHPrice;
    }

    function consultvETHPrice()
        external
        view
        returns (uint256)
    {
        return vETHPrice;
    }

    function currentSharePrice() public view returns (uint256) {
        uint256 price = IVectorStrategy(VectorStrategy).getVectorSharePrice();
        return price;
    }

    // -- Update Functions -- //

    function updatesvETHPrice() external returns (uint256) {
        require(isUpdateAllowed(msg.sender), "Not allowed to update the Oracle");

        latestsvETHPrice = currentSharePrice();
        svETHlastUpdatedTimestamp = block.timestamp;

        emit svETHPriceUpdated(latestsvETHPrice);
        return latestsvETHPrice;
    }

    function updatevETHPrice(uint256 _vETHPrice) external returns (uint256) {
        require(isUpdateAllowed(msg.sender), "Not allowed to update the Oracle");
        
        vETHPrice = _vETHPrice;
        vETHlastUpdatedTimestamp = block.timestamp;

        emit vETHPriceUpdated(_vETHPrice);
        return vETHPrice;
    }

}
