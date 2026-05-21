// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "./Convertible.sol";

contract ConvertibleFactory {
    address public owner;
    address public feeRecipient;
    uint256 public yearlyFeeBps;

    mapping(address => bool) public isConvertible;

    address[] public allConvertibles;

    event ConvertibleCreated(
        address indexed collateralToken,
        address indexed priceFeed,
        uint256 maturity,
        uint256 conversionPrice,
        address convertible,
        uint256 index
    );

    constructor() {
        owner = msg.sender;
    }

    function allConvertiblesLength() external view returns (uint256) {
        return allConvertibles.length;
    }

    function createConvertible(
        address collateralToken,
        address priceFeed,
        uint256 collateralFactor,
        uint256 maturity,
        uint256 conversionPrice,
        uint256 liquidationIncentive
    ) external returns (address convertible) {
        bytes32 salt = keccak256(abi.encodePacked(collateralToken, priceFeed, maturity, conversionPrice));

        convertible = address(new Convertible{salt: salt}(
            collateralToken,
            priceFeed,
            collateralFactor,
            maturity,
            conversionPrice,
            liquidationIncentive
        ));

        isConvertible[convertible] = true;
        allConvertibles.push(convertible);

        emit ConvertibleCreated(
            collateralToken,
            priceFeed,
            maturity,
            conversionPrice,
            convertible,
            allConvertibles.length - 1
        );
    }

    function setYearlyFee(uint256 newFeeBps) external {
        require(msg.sender == owner, "forbidden");
        require(newFeeBps <= 1000, "fee too high");
        yearlyFeeBps = newFeeBps;
    }

    function withdraw(address token, address to, uint256 amount) external {
        require(msg.sender == feeRecipient, "forbidden");
        (bool success, bytes memory data) = token.call(abi.encodeWithSignature("transfer(address,uint256)", to, amount));
        require(success && (data.length == 0 || abi.decode(data, (bool))), "transfer failed");
    }

    function setOwner(address _owner) external {
        require(msg.sender == owner, "forbidden");
        owner = _owner;
    }

    function setFeeRecipient(address _feeRecipient) external {
        require(msg.sender == owner, "forbidden");
        feeRecipient = _feeRecipient;
    }
}
