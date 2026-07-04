// SPDX-License-Identifier: BUSL-1.1

/// @author Benjamin Hughes - Rubicon
/// @notice This contract acts as the admin for the Rubicon Pools system
/// @notice The BathHouse approves library contracts and initializes bathPairs

pragma solidity =0.7.6;

// SAME STORAGE AS OLD VERSION W/ ONLY TWO FUNCTIONS
import "../interfaces/IBathToken.sol";

contract TransitionBathHouse {
    string public name;

    mapping(address => mapping(address => address)) public getPair;

    address public admin;
    address public RubiconMarketAddress;

    // List of approved strategies
    mapping(address => bool) public approvedBathTokens;
    mapping(address => bool) public approvedPairs;
    mapping(address => bool) public approvedStrategists;

    mapping(address => bool) internal bathQuoteExists;
    mapping(address => bool) internal bathAssetExists;
    mapping(address => uint8) public propToStrategists;
    mapping(address => address) internal quoteToBathQuote;
    mapping(address => address) internal assetToBathAsset;

    bool public initialized;
    bool public permissionedStrategists; //if true strategists are permissioned

    // Key, system-wide risk parameters for Pools
    uint256 public reserveRatio; // proportion of the pool that must remain present in the pair

    // The delay after which unfilled orders are cancelled
    uint256 public timeDelay;

    // Constraint variable for the max amount of outstanding market making pairs at a time
    uint256 public maxOutstandingPairCount;

    // Event to log new BathPairs and their bathTokens
    event LogNewBathPair(
        address newPair,
        address newPairBathAsset,
        address newPairBathQuote,
        address newPairAsset,
        address newPairQuote,
        uint8 newPairStratRewardRate
    );

    modifier onlyAdmin() {
        require(msg.sender == admin);
        _;
    }

    function setBathTokenMarket(address bathToken, address newMarket)
        external
        onlyAdmin
    {
        IBathToken(bathToken).setMarket(newMarket);
    }

    function setBathTokenBathHouse(address bathToken, address newAdmin)
        external
        onlyAdmin
    {
        IBathToken(bathToken).setBathHouse(newAdmin);
    }
}
