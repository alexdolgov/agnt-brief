// SPDX-License-Identifier: SYMM-Core-Business-Source-License-1.1
// This contract is licensed under the SYMM Core Business Source License 1.1
// Copyright (c) 2023 Symmetry Labs AG
// For more information, see https://docs.symm.io/legal-disclaimer/license
pragma solidity >=0.8.18;

import {ISymmio} from "./interfaces/ISymmio.sol";
import {AccessControlEnumerable} from "@openzeppelin/contracts/access/AccessControlEnumerable.sol";
import {Pausable} from "@openzeppelin/contracts/security/Pausable.sol";

/// @title SymmioSymbolManager
/// @notice Manages symbols and their properties for the Symmio protocol
/// @dev Implements role-based access control and daily operation limits
contract SymmioSymbolManager is AccessControlEnumerable, Pausable {

    // Role definitions
    bytes32 public constant SYMBOL_ADDER_ROLE = keccak256("SYMBOL_ADDER_ROLE");
    bytes32 public constant SYMBOL_REMOVER_ROLE = keccak256("SYMBOL_REMOVER_ROLE");
    bytes32 public constant SYMBOL_MODIFIER_ROLE = keccak256("SYMBOL_MODIFIER_ROLE");
    bytes32 public constant SETTER_ROLE = keccak256("SETTER_ROLE");
    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
    bytes32 public constant UNPAUSER_ROLE = keccak256("UNPAUSER_ROLE");

    /// @notice Stores daily limits for different operations
    /// @dev Used to prevent excessive modifications within a 24-hour period
    struct DailyLimits {
        uint256 symbolAddition;
        uint256 tradingFee;
        uint256 validationState;
        uint256 maxLeverage;
        uint256 acceptableValues;
        uint256 fundingState;
        uint256 forceCloseGapRatio;
    }

    /// @notice Tracks the number of operations performed within the current day
    struct DailyOperations {
        uint256 symbolAddition;
        uint256 tradingFee;
        uint256 validationState;
        uint256 maxLeverage;
        uint256 acceptableValues;
        uint256 fundingState;
        uint256 forceCloseGapRatio;
    }

    address public symmioAddress;
    DailyLimits public dailyLimits;
    DailyOperations public dailyOperations;
    uint256 public lastResetTimestamp;

    /// @notice Stores unique hashes of symbol properties to prevent duplicates
    mapping(bytes32 => bool) public addedSymbolHashes;
    /// @notice Array of all symbol hashes for tracking purposes
    bytes32[] public symbolHashes;

    // ERRORS
    error DailyLimitExceeded(string operation, uint256 attempted, uint256 remaining);
    error InvalidSymbolsList();
    error DuplicateSymbol(string name);
    error InvalidArrayLengths();

    // EVENTS
    event DailyLimitsUpdated(DailyLimits limits);
    event SymbolsAdded(uint256 count);
    event SymbolHashesCleared(address account);
    event SymmioSymbolsLoaded(uint256 start, uint256 size);
    event BatchOperationExecuted(string operationType, uint256[] symbolIds);
    event DailyOperationsReset();

    /// @notice Initializes the contract with initial roles and limits
    /// @param _symmioAddress Address of the main Symmio contract
    /// @param admin Address to be granted admin role
    /// @param symbol_modifier Address to be granted symbol modifier role
    /// @param symbol_adder Address to be granted symbol adder role
    /// @param symbol_remover Address to be granted symbol remover role
    /// @param _limits Initial daily operation limits
    constructor(
        address _symmioAddress,
        address admin,
        address symbol_modifier,
        address symbol_adder,
        address symbol_remover,
        DailyLimits memory _limits
    ) {
        symmioAddress = _symmioAddress;
        lastResetTimestamp = block.timestamp;
        dailyLimits = _limits;

        _setupRole(DEFAULT_ADMIN_ROLE, admin);
        _setupRole(SYMBOL_ADDER_ROLE, symbol_adder);
        _setupRole(SYMBOL_REMOVER_ROLE, symbol_remover);
        _setupRole(SYMBOL_MODIFIER_ROLE, symbol_modifier);
        _setupRole(PAUSER_ROLE, admin);
        _setupRole(UNPAUSER_ROLE, admin);
        _setupRole(SETTER_ROLE, admin);

        dailyOperations = DailyOperations(0, 0, 0, 0, 0, 0, 0);

        emit DailyLimitsUpdated(_limits);
    }

    /// @notice Checks and updates daily operation limits
    /// @dev Resets counters if 24 hours have passed since last reset
    /// @param operation Name of the operation being performed
    /// @param count Number of operations being attempted
    /// @param limit Maximum allowed operations per day
    /// @param current Current count of operations today
    /// @return Updated operation count
    function checkAndUpdateDailyLimit(
        string memory operation,
        uint256 count,
        uint256 limit,
        uint256 current
    ) internal returns (uint256) {
        if (block.timestamp >= lastResetTimestamp + 1 days) {
            dailyOperations = DailyOperations(0, 0, 0, 0, 0, 0, 0);
            lastResetTimestamp = block.timestamp;
            emit DailyOperationsReset();
            current = 0;
        }

        if (current + count > limit) {
            revert DailyLimitExceeded(operation, count, limit - current);
        }

        return current + count;
    }

    /// @notice Pauses all contract operations
    /// @dev Can only be called by accounts with PAUSER_ROLE
    function pause() external whenNotPaused onlyRole(PAUSER_ROLE) {
        _pause();
    }

    /// @notice Unpauses contract operations
    /// @dev Can only be called by accounts with UNPAUSER_ROLE
    function unpause() external whenPaused onlyRole(UNPAUSER_ROLE) {
        _unpause();
    }

    /// @notice Adds new trading symbols to the system
    /// @dev Checks for duplicates using symbol hashes
    /// @param symbols Array of Symbol structs to be added
    function addSymbols(ISymmio.Symbol[] memory symbols) external whenNotPaused onlyRole(SYMBOL_ADDER_ROLE)
    {
        uint256 symbolsLength = symbols.length;
        if (symbolsLength == 0) revert InvalidSymbolsList();

        dailyOperations.symbolAddition = checkAndUpdateDailyLimit(
            "symbolAddition",
            symbolsLength,
            dailyLimits.symbolAddition,
            dailyOperations.symbolAddition
        );

        for (uint256 i = 0; i < symbolsLength;) {
            ISymmio.Symbol memory symbol = symbols[i];
            bytes32 symbolHash = computeSymbolHash(symbol);
            if (addedSymbolHashes[symbolHash]) revert DuplicateSymbol(symbol.name);
            addedSymbolHashes[symbolHash] = true;
            symbolHashes.push(symbolHash);
            unchecked {
                ++i;
            }
        }

        ISymmio(symmioAddress).addSymbols(symbols);
        emit SymbolsAdded(symbolsLength);
    }

    /// @notice Updates trading fees for multiple symbols
    /// @param symbolIds Array of symbol IDs to update
    /// @param tradingFees Array of new trading fee values
    function setSymbolTradingFeeBatch(
        uint256[] memory symbolIds,
        uint256[] memory tradingFees
    ) external whenNotPaused onlyRole(SYMBOL_MODIFIER_ROLE) {
        if (symbolIds.length != tradingFees.length) revert InvalidArrayLengths();

        dailyOperations.tradingFee = checkAndUpdateDailyLimit(
            "tradingFee",
            symbolIds.length,
            dailyLimits.tradingFee,
            dailyOperations.tradingFee
        );

        for (uint256 i = 0; i < symbolIds.length; i++) {
            ISymmio(symmioAddress).setSymbolTradingFee(symbolIds[i], tradingFees[i]);
        }

        emit BatchOperationExecuted("tradingFee", symbolIds);
    }

    /// @notice Updates validation states for multiple symbols to true
    /// @param symbolIds Array of symbol IDs to update
    function activateSymbols(
        uint256[] memory symbolIds
    ) external whenNotPaused onlyRole(SYMBOL_MODIFIER_ROLE) {
        dailyOperations.validationState = checkAndUpdateDailyLimit(
            "activateSymbols",
            symbolIds.length,
            dailyLimits.validationState,
            dailyOperations.validationState
        );

        for (uint256 i = 0; i < symbolIds.length; i++) {
            ISymmio(symmioAddress).setSymbolValidationState(symbolIds[i], true);
        }

        emit BatchOperationExecuted("activateSymbols", symbolIds);
    }

    /// @notice Updates validation states for multiple symbols to false
    /// @param symbolIds Array of symbol IDs to update
    function deactivateSymbols(
        uint256[] memory symbolIds
    ) external whenNotPaused onlyRole(SYMBOL_REMOVER_ROLE) {
        dailyOperations.validationState = checkAndUpdateDailyLimit(
            "deactivateSymbols",
            symbolIds.length,
            dailyLimits.validationState,
            dailyOperations.validationState
        );

        for (uint256 i = 0; i < symbolIds.length; i++) {
            ISymmio(symmioAddress).setSymbolValidationState(symbolIds[i], false);
        }

        emit BatchOperationExecuted("deactivateSymbols", symbolIds);
    }

    /// @notice Updates maximum leverage values for multiple symbols
    /// @param symbolIds Array of symbol IDs to update
    /// @param maxLeverages Array of new maximum leverage values
    function setSymbolMaxLeverageBatch(
        uint256[] memory symbolIds,
        uint256[] memory maxLeverages
    ) external whenNotPaused onlyRole(SYMBOL_MODIFIER_ROLE) {
        if (symbolIds.length != maxLeverages.length) revert InvalidArrayLengths();

        dailyOperations.maxLeverage = checkAndUpdateDailyLimit(
            "maxLeverage",
            symbolIds.length,
            dailyLimits.maxLeverage,
            dailyOperations.maxLeverage
        );

        for (uint256 i = 0; i < symbolIds.length; i++) {
            ISymmio(symmioAddress).setSymbolMaxLeverage(symbolIds[i], maxLeverages[i]);
        }

        emit BatchOperationExecuted("maxLeverage", symbolIds);
    }

    /// @notice Updates acceptable values for multiple symbols
    /// @param symbolIds Array of symbol IDs to update
    /// @param minAcceptableQuoteValues Array of new minimum acceptable quote values
    /// @param minAcceptablePortionLFs Array of new minimum acceptable portion LFs
    function setSymbolAcceptableValuesBatch(
        uint256[] memory symbolIds,
        uint256[] memory minAcceptableQuoteValues,
        uint256[] memory minAcceptablePortionLFs
    ) external whenNotPaused onlyRole(SYMBOL_MODIFIER_ROLE) {
        if (symbolIds.length != minAcceptableQuoteValues.length ||
            symbolIds.length != minAcceptablePortionLFs.length) revert InvalidArrayLengths();

        dailyOperations.acceptableValues = checkAndUpdateDailyLimit(
            "acceptableValues",
            symbolIds.length,
            dailyLimits.acceptableValues,
            dailyOperations.acceptableValues
        );

        for (uint256 i = 0; i < symbolIds.length; i++) {
            ISymmio(symmioAddress).setSymbolAcceptableValues(
                symbolIds[i],
                minAcceptableQuoteValues[i],
                minAcceptablePortionLFs[i]
            );
        }

        emit BatchOperationExecuted("acceptableValues", symbolIds);
    }

    /// @notice Updates funding states for multiple symbols
    /// @param symbolIds Array of symbol IDs to update
    /// @param fundingRateEpochDurations Array of new funding rate epoch durations
    /// @param fundingRateWindowTimes Array of new funding rate window times
    function setSymbolFundingStateBatch(
        uint256[] memory symbolIds,
        uint256[] memory fundingRateEpochDurations,
        uint256[] memory fundingRateWindowTimes
    ) external whenNotPaused onlyRole(SYMBOL_MODIFIER_ROLE) {
        if (symbolIds.length != fundingRateEpochDurations.length ||
            symbolIds.length != fundingRateWindowTimes.length) revert InvalidArrayLengths();

        dailyOperations.fundingState = checkAndUpdateDailyLimit(
            "fundingState",
            symbolIds.length,
            dailyLimits.fundingState,
            dailyOperations.fundingState
        );

        for (uint256 i = 0; i < symbolIds.length; i++) {
            ISymmio(symmioAddress).setSymbolFundingState(
                symbolIds[i],
                fundingRateEpochDurations[i],
                fundingRateWindowTimes[i]
            );
        }

        emit BatchOperationExecuted("fundingState", symbolIds);
    }

    /// @notice Updates force close gap ratios for multiple symbols
    /// @param symbolIds Array of symbol IDs to update
    /// @param forceCloseGapRatios Array of new force close gap ratios
    function setForceCloseGapRatioBatch(
        uint256[] memory symbolIds,
        uint256[] memory forceCloseGapRatios
    ) external whenNotPaused onlyRole(SYMBOL_MODIFIER_ROLE) {
        if (symbolIds.length != forceCloseGapRatios.length) revert InvalidArrayLengths();

        dailyOperations.forceCloseGapRatio = checkAndUpdateDailyLimit(
            "forceCloseGapRatio",
            symbolIds.length,
            dailyLimits.forceCloseGapRatio,
            dailyOperations.forceCloseGapRatio
        );

        for (uint256 i = 0; i < symbolIds.length; i++) {
            ISymmio(symmioAddress).setForceCloseGapRatio(
                symbolIds[i],
                forceCloseGapRatios[i]
            );
        }

        emit BatchOperationExecuted("forceCloseGapRatio", symbolIds);
    }

    /// @notice Computes a unique hash for a symbol based on its properties
    /// @param symbol Symbol struct containing all symbol properties
    /// @return bytes32 Hash of the symbol's properties
    function computeSymbolHash(ISymmio.Symbol memory symbol) internal pure returns (bytes32) {
        return
            keccak256(
            abi.encodePacked(
                symbol.symbolId,
                symbol.name,
                symbol.minAcceptableQuoteValue,
                symbol.minAcceptablePortionLF,
                symbol.tradingFee,
                symbol.maxLeverage,
                symbol.fundingRateEpochDuration,
                symbol.fundingRateWindowTime
            )
        );
    }

    /// @notice Clears all stored symbol hashes
    /// @dev Can only be called by accounts with SETTER_ROLE
    function clearSymbolHashes() external onlyRole(SETTER_ROLE) {
        for (uint256 i = 0; i < symbolHashes.length; i++) {
            delete addedSymbolHashes[symbolHashes[i]];
        }
        delete symbolHashes;
        emit SymbolHashesCleared(msg.sender);
    }

    /// @notice Loads symbols from the Symmio contract into local storage
    /// @param start Starting index for loading symbols
    /// @param size Number of symbols to load
    function loadSymmioSymbols(uint256 start, uint256 size) external onlyRole(SETTER_ROLE) {
        ISymmio.Symbol[] memory symbols = ISymmio(symmioAddress).getSymbols(start, size);
        for (uint256 i = 0; i < symbols.length; i++) {
            bytes32 symbolHash = computeSymbolHash(symbols[i]);
            if (!addedSymbolHashes[symbolHash]) {
                addedSymbolHashes[symbolHash] = true;
                symbolHashes.push(symbolHash);
            }
        }
        emit SymmioSymbolsLoaded(start, size);
    }

    /// @notice Updates the daily operation limits for all operations
    /// @dev Only callable by accounts with SETTER_ROLE. Updates all limits in a single transaction.
    /// @param _limits New daily limits struct containing maximum values for all operations
    function setDailyLimits(DailyLimits memory _limits) external onlyRole(SETTER_ROLE) {
        dailyLimits = _limits;
        emit DailyLimitsUpdated(_limits);
    }

    /// @notice Retrieves the current daily operation limits
    /// @dev Returns the complete DailyLimits struct containing all operation limits
    /// @return DailyLimits struct containing maximum values for all operations
    function getDailyLimits() external view returns (DailyLimits memory) {
        return dailyLimits;
    }

    /// @notice Retrieves the current count of operations performed today
    /// @dev Returns the complete DailyOperations struct containing all operation counts
    /// @return DailyOperations struct containing the number of operations performed in the current period
    function getDailyOperations() external view returns (DailyOperations memory) {
        return dailyOperations;
    }
}