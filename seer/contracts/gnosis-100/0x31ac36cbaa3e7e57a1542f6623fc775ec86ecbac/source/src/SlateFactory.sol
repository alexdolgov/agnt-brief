// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {ISlateFactory} from "./interfaces/ISlateFactory.sol";
import {IParimutuelVault} from "./interfaces/IParimutuelVault.sol";
import {IERC20} from "./interfaces/IERC20.sol";
import {IMarket} from "./interfaces/IMarket.sol";

/// @title SlateFactory
/// @notice Registers slates from existing Seer markets; batch enter/redeem via ParimutuelVault.
/// @dev Slate `markets` and `collateral` are stored and passed through as given. Duplicate addresses in one slate
///      are not deduplicated on-chain: `enterSlate` pulls `amountPerMarket` per array entry, so repeating a market
///      multiplies collateral for the same exposure. Collateral is not bound to markets at registration either;
///      a mismatched pair reverts in Seer `Router.splitPosition` on `enterSlate`, not here. Callers (frontend /
///      integrators) must submit correct data; the contract does not validate every integrator-side mistake.
contract SlateFactory is ISlateFactory {
    uint256 public constant MAX_MARKETS = 16;

    IParimutuelVault public immutable parimutuelVault;

    uint256 public nextSlateId = 1;

    mapping(uint256 => Slate) internal _slates;

    error EmptyName();
    error EmptyMarkets();
    error TooManyMarkets();
    error ZeroCollateral();
    error ZeroMarket();
    error InvalidSlateId();

    constructor(IParimutuelVault parimutuelVault_) {
        parimutuelVault = parimutuelVault_;
    }

    /// @inheritdoc ISlateFactory
    function getSlate(uint256 slateId) external view returns (Slate memory) {
        return _slates[slateId];
    }

    /// @inheritdoc ISlateFactory
    /// @dev Does not require unique `params.markets` entries or verify collateral matches each market; incoherent
    ///      slates fail at `ParimutuelVault.enterPositions` → `Router.splitPosition` when someone enters.
    function createSlate(CreateSlateParams calldata params) external returns (uint256 slateId) {
        if (bytes(params.name).length == 0) revert EmptyName();

        uint256 marketCount = params.markets.length;
        if (marketCount == 0) revert EmptyMarkets();
        if (marketCount > MAX_MARKETS) revert TooManyMarkets();
        if (address(params.collateral) == address(0)) revert ZeroCollateral();

        slateId = nextSlateId++;
        IMarket[] memory markets = new IMarket[](marketCount);

        for (uint256 i = 0; i < marketCount; i++) {
            if (params.markets[i] == address(0)) revert ZeroMarket();
            markets[i] = IMarket(params.markets[i]);
        }

        _slates[slateId] = Slate({
            name: params.name,
            creator: msg.sender,
            collateral: params.collateral,
            markets: markets,
            createdAt: uint32(block.timestamp)
        });

        emit SlateCreated(slateId, params.name, params.markets, msg.sender);
    }

    /// @inheritdoc ISlateFactory
    /// @dev Caller must approve `parimutuelVault` for `amountPerMarket * marketCount` collateral.
    function enterSlate(uint256 slateId, uint256 amountPerMarket, uint256[][] calldata weightsPerMarket) external {
        Slate storage slate = _requireSlate(slateId);

        address user = msg.sender;
        parimutuelVault.enterPositions(
            user, slate.collateral, slate.markets, amountPerMarket, weightsPerMarket, user
        );
    }

    /// @inheritdoc ISlateFactory
    function redeemSlate(uint256 slateId, uint256[][] calldata amountsPerMarket) external returns (uint256 totalPayout) {
        Slate storage slate = _requireSlate(slateId);
        totalPayout = parimutuelVault.redeemPositions(msg.sender, slate.collateral, slate.markets, amountsPerMarket);
    }

    function _requireSlate(uint256 slateId) internal view returns (Slate storage slate) {
        if (slateId == 0 || slateId >= nextSlateId) revert InvalidSlateId();
        slate = _slates[slateId];
        if (slate.markets.length == 0) revert InvalidSlateId();
    }
}
