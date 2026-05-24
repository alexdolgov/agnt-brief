// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

import { IDiamondCut } from "../interfaces/IDiamondCut.sol";

import { LinkedListStorage } from "../../interfaces/LinkedListStorage.sol";

import { IRainPool } from "../../interfaces/IRainPool.sol";

import { IRainDeployer } from "../../interfaces/IRainDeployer.sol";

import { _revert } from "../../utils/Globals.sol";

// Remember to add the loupe functions from DiamondLoupeFacet to the diamond.
// The loupe functions are required by the EIP2535 Diamonds standard

error NoSelectorsGivenToAdd();
error NotContractOwner(address _user, address _contractOwner);
error NoSelectorsProvidedForFacetForCut(address _facetAddress);
error CannotAddSelectorsToZeroAddress(bytes4[] _selectors);
error NoBytecodeAtAddress(address _contractAddress, string _message);
error IncorrectFacetCutAction(uint8 _action);
error CannotAddFunctionToDiamondThatAlreadyExists(bytes4 _selector);
error CannotReplaceFunctionsFromFacetWithZeroAddress(bytes4[] _selectors);
error CannotReplaceImmutableFunction(bytes4 _selector);
error CannotReplaceFunctionWithTheSameFunctionFromTheSameFacet(bytes4 _selector);
error CannotReplaceFunctionThatDoesNotExists(bytes4 _selector);
error RemoveFacetAddressMustBeZeroAddress(address _facetAddress);
error CannotRemoveFunctionThatDoesNotExist(bytes4 _selector);
error CannotRemoveImmutableFunction(bytes4 _selector);
error InitializationFunctionReverted(address _initializationContractAddress, bytes _calldata);

/**
 * @title LibDiamond
 * @author Rain Team
 * @notice Library for accessing, managing and initializing the diamond's shared application storage.
 * @dev Implements EIP-2535 Diamond Standard to ensure consistent state access across all facets in the diamond.
 */
library LibDiamond {
    event DiamondCut(IDiamondCut.FacetCut[] _diamondCut, address _init, bytes _calldata);

    bytes32 internal constant DIAMOND_STORAGE_POSITION = keccak256("diamond.standard.diamond.storage");

    struct FacetAddressAndSelectorPosition {
        address facetAddress;
        uint16 selectorPosition;
    }

    /**
     * @title DiamondStorage
     * @notice Main storage structure for the RainPool diamond proxy.
     * @dev Uses diamond storage pattern to avoid storage collisions between facets.
     * @dev See {IGetter}.
     */
    struct DiamondStorage {
        ////////////////////////
        // Diamond Based Storage
        ////////////////////////
        mapping(bytes4 => FacetAddressAndSelectorPosition) facetAddressAndSelectorPosition;
        bytes4[] selectors;
        mapping(bytes4 => bool) supportedInterfaces;
        bool isInitialized;
        ////////////////////
        // App Based Storage
        ////////////////////
        uint256 PRICE_MAGNIFICATION;
        uint256 FEE_MAGNIFICATION;
        uint256 TICK_SPACING;
        uint256 ORDER_EXECUTION_FEE;
        uint256 DISPUTE_WINDOW;
        uint256 DISPUTE_FEE_MAX;
        uint256 DISPUTE_FEE_MIN;
        uint256 APPEAL_FEE_MIN;
        uint256 RESOLUTION_FEE_MIN;
        uint256 RESOLUTION_FEE_MAX;
        uint256 allVotes;
        uint256 allFunds;
        uint256 winningPoolShare;
        uint256 liquidityShare;
        uint256 platformShare;
        uint256 orderBookShare;
        uint256 creatorShare;
        uint256 resolverShare;
        uint256 closingShare;
        uint256 resolverShareUSDT;
        uint256 totalLiquidity;
        uint256 startTime;
        uint256 endTime;
        uint256 endTimeCache;
        uint256 numberOfOptions;
        uint256 winner;
        uint256 platformFee;
        uint256 liquidityFee;
        uint256 creatorFee;
        uint256 closingFee;
        uint256 resultResolverFee;
        uint256 oracleFixedFee;
        uint256 oracleEndTime;
        uint256 ordersAdded;
        uint256 ordersRemoved;
        uint256 baseTokenDecimals;
        uint256 resolverBond;
        uint256 proposedWinner;
        string ipfsUri;
        address FACTORY;
        address baseToken;
        address rainToken;
        address usdt;
        address poolOwner;
        address platformAddress;
        address resolver;
        address disputeResolver;
        address referrer;
        address resolutionProposer;
        bool isPublic;
        bool resolverIsAI;
        bool isDisputed;
        bool isAppealed;
        bool firstClaim;
        bool poolFinalized;
        mapping(uint256 option => uint256 votes) totalVotes;
        mapping(uint256 option => uint256 funds) totalFunds;
        mapping(uint256 option => mapping(address user => uint256 votes)) userVotes;
        mapping(address user => uint256 liquidity) userLiquidity;
        mapping(address user => bool claimed) claimed;
        mapping(uint256 option => mapping(uint256 price => LinkedListStorage.LinkedList orderID)) sellOrders;
        mapping(uint256 option => mapping(uint256 price => LinkedListStorage.LinkedList orderID)) buyOrders;
        mapping(uint256 option => mapping(uint256 price => mapping(uint256 orderID => IRainPool.OrderExists orderExists))) orderBook;
        mapping(address user => uint256 activeOrders) userActiveSellOrders;
        mapping(address user => uint256 activeOrders) userActiveBuyOrders;
        mapping(uint256 option => mapping(address user => uint256 votes)) userVotesInEscrow;
        mapping(uint256 option => mapping(address user => uint256 amount)) userAmountInEscrow;
        mapping(uint256 option => uint256 firstSellOrderPrice) firstSellOrderPrice;
        mapping(uint256 option => uint256 firstBuyOrderPrice) firstBuyOrderPrice;
        IRainPool.Dispute dispute;
        IRainPool.Dispute appeal;
        IRainPool.PoolState poolState;
        IRainDeployer.TokenData tokenData;
    }

    /**
     * @notice Initializes the diamond storage with pool parameters and initial liquidity.
     * @dev Sets up all core pool parameters, validates inputs, and distributes initial liquidity across options.
     * @param params The initialization parameters containing all pool configuration.
     */
    function initializeDiamond(IRainPool.Params memory params) internal {
        DiamondStorage storage ds = diamondStorage();

        if (params.baseToken == address(0) || params.rainToken == address(0)) {
            _revert(IRainPool.NoTokenSet.selector);
        }
        if (params.poolOwner == address(0)) {
            _revert(IRainPool.NoOwnerSet.selector);
        }
        if (params.platformAddress == address(0)) {
            _revert(IRainPool.NoPlatformSet.selector);
        }
        if (params.startTime <= block.timestamp) {
            _revert(IRainPool.StartTimeEnded.selector);
        }
        if (params.endTime <= params.startTime) {
            _revert(IRainPool.EndTImeLessThanStartTime.selector);
        }
        if (params.numberOfOptions < 3) {
            _revert(IRainPool.MinimumOptionsShouldBeThree.selector);
        }
        if (params.numberOfOptions > 50) {
            _revert(IRainPool.MaximumOptionsExceeded.selector);
        }
        if (params.oracleFixedFee == 0) {
            _revert(IRainPool.InvalidOracleFixedFee.selector);
        }

        ds.isPublic = params.isPublic;
        ds.resolverIsAI = params.resolverIsAI;
        ds.FACTORY = params.deployerContract;
        ds.baseToken = params.baseToken;
        ds.poolOwner = params.poolOwner;
        ds.resolver = params.resolver;

        emit IRainPool.ResolverSet({ resolver: ds.resolverIsAI ? ds.resolver : ds.poolOwner });

        ds.disputeResolver = params.disputeResolver;
        ds.startTime = params.startTime;
        ds.endTime = params.endTime;
        ds.numberOfOptions = params.numberOfOptions;
        ds.platformAddress = params.platformAddress;
        ds.platformFee = params.platformFee;
        ds.rainToken = params.rainToken;
        ds.usdt = params.usdt;
        ds.referrer = params.referrer;
        ds.liquidityFee = params.liquidityFee;
        ds.creatorFee = params.creatorFee;
        ds.resultResolverFee = params.resultResolverFee;
        ds.closingFee = params.closingFee;
        ds.oracleFixedFee = params.oracleFixedFee;
        ds.oracleEndTime = params.oracleEndTime;
        ds.ipfsUri = params.ipfsUri;
        ds.baseTokenDecimals = 10 ** params.baseTokenDecimals;

        ds.tokenData = params.tokenData;

        ds.PRICE_MAGNIFICATION = 10 ** 18;
        ds.FEE_MAGNIFICATION = 10 ** 3;

        ds.TICK_SPACING = 0.01 ether;
        ds.ORDER_EXECUTION_FEE = 25;

        ds.DISPUTE_WINDOW = ds.resolverIsAI ? 5 minutes : 5 minutes;
        ds.DISPUTE_FEE_MAX = 1000 * (10 ** ERC20(ds.usdt).decimals());
        ds.DISPUTE_FEE_MIN = 10 * (10 ** ERC20(ds.usdt).decimals());
        ds.APPEAL_FEE_MIN = 20 * (10 ** ERC20(ds.usdt).decimals());
        ds.RESOLUTION_FEE_MIN = 100 * (10 ** ERC20(ds.usdt).decimals());
        ds.RESOLUTION_FEE_MAX = 1000 * (10 ** ERC20(ds.usdt).decimals());

        uint256 liquidityPercentageSum = 0;
        uint256 i = 0;
        for (; i < params.liquidityPercentages.length; ) {
            if (params.liquidityPercentages[i] == 0) {
                _revert(IRainPool.InvalidLiquidityPercentage.selector);
            }
            liquidityPercentageSum += params.liquidityPercentages[i];
            unchecked {
                ++i;
            }
        }
        if (liquidityPercentageSum != 10_000) {
            _revert(IRainPool.InvalidLiquidityPercentage.selector);
        }

        if (params.initialLiquidity > 0) {
            i = 1;
            for (; i <= ds.numberOfOptions; ) {
                ds.totalFunds[i] = (params.initialLiquidity * params.liquidityPercentages[i - 1]) / 10_000;
                ds.totalVotes[i] = params.initialLiquidity; // initial price is same as percentage weight hence (totalAmount * weight) / weight = totalAmount of votes
                ds.allVotes += ds.totalVotes[i];
                ds.allFunds += ds.totalFunds[i];
                ds.userVotes[i][ds.poolOwner] += ds.totalVotes[i];
                emit IRainPool.EnterOption(i, ds.totalFunds[i], ds.totalVotes[i], params.poolOwner);

                ds.firstSellOrderPrice[i] = 0.99 ether;
                ds.firstBuyOrderPrice[i] = 0.01 ether;

                unchecked {
                    ++i;
                }
            }
            ds.totalLiquidity += params.initialLiquidity;
            ds.userLiquidity[ds.poolOwner] += params.initialLiquidity;

            emit IRainPool.EnterLiquidity(params.initialLiquidity, params.poolOwner);
        } else {
            _revert(IRainPool.InvalidInitialLiquidity.selector);
        }
        i = 1;
        for (; i <= ds.numberOfOptions; ) {
            emit IRainPool.Sync(i, ds.totalFunds[i], ds.allFunds);
            unchecked {
                ++i;
            }
        }
    }

    function diamondStorage() internal pure returns (DiamondStorage storage ds) {
        bytes32 position = DIAMOND_STORAGE_POSITION;
        // solhint-disable-next-line no-inline-assembly
        assembly {
            ds.slot := position
        }
    }

    function enforceIsFactory() internal view {
        if (msg.sender != diamondStorage().FACTORY) {
            _revert(IRainPool.OnlyAuthority.selector);
        }
    }

    function enforceIsNotInitialized() internal view {
        if (diamondStorage().isInitialized == true) {
            _revert(IRainPool.AlreadyInitialized.selector);
        }
    }

    // Internal function version of diamondCut
    function diamondCut(IDiamondCut.FacetCut[] memory _diamondCut, address _init, bytes memory _calldata) internal {
        enforceIsNotInitialized();
        for (uint256 facetIndex; facetIndex < _diamondCut.length; facetIndex++) {
            bytes4[] memory functionSelectors = _diamondCut[facetIndex].functionSelectors;
            address facetAddress = _diamondCut[facetIndex].facetAddress;
            if (functionSelectors.length == 0) {
                revert NoSelectorsProvidedForFacetForCut(facetAddress);
            }
            IDiamondCut.FacetCutAction action = _diamondCut[facetIndex].action;
            if (action == IDiamondCut.FacetCutAction.Add) {
                addFunctions(facetAddress, functionSelectors);
            } else if (action == IDiamondCut.FacetCutAction.Replace) {
                replaceFunctions(facetAddress, functionSelectors);
            } else if (action == IDiamondCut.FacetCutAction.Remove) {
                removeFunctions(facetAddress, functionSelectors);
            } else {
                revert IncorrectFacetCutAction(uint8(action));
            }
        }
        emit DiamondCut(_diamondCut, _init, _calldata);
        initializeDiamondCut(_init, _calldata);
        diamondStorage().isInitialized = true;
    }

    function addFunctions(address _facetAddress, bytes4[] memory _functionSelectors) internal {
        if (_facetAddress == address(0)) {
            revert CannotAddSelectorsToZeroAddress(_functionSelectors);
        }
        DiamondStorage storage ds = diamondStorage();
        uint16 selectorCount = uint16(ds.selectors.length);
        enforceHasContractCode(_facetAddress, "LibDiamondCut: Add facet has no code");
        for (uint256 selectorIndex; selectorIndex < _functionSelectors.length; selectorIndex++) {
            bytes4 selector = _functionSelectors[selectorIndex];
            address oldFacetAddress = ds.facetAddressAndSelectorPosition[selector].facetAddress;
            if (oldFacetAddress != address(0)) {
                revert CannotAddFunctionToDiamondThatAlreadyExists(selector);
            }
            ds.facetAddressAndSelectorPosition[selector] = FacetAddressAndSelectorPosition(
                _facetAddress,
                selectorCount
            );
            ds.selectors.push(selector);
            selectorCount++;
        }
    }

    function replaceFunctions(address _facetAddress, bytes4[] memory _functionSelectors) internal {
        DiamondStorage storage ds = diamondStorage();
        if (_facetAddress == address(0)) {
            revert CannotReplaceFunctionsFromFacetWithZeroAddress(_functionSelectors);
        }
        enforceHasContractCode(_facetAddress, "LibDiamondCut: Replace facet has no code");
        for (uint256 selectorIndex; selectorIndex < _functionSelectors.length; selectorIndex++) {
            bytes4 selector = _functionSelectors[selectorIndex];
            address oldFacetAddress = ds.facetAddressAndSelectorPosition[selector].facetAddress;
            // can't replace immutable functions -- functions defined directly in the diamond in this case
            if (oldFacetAddress == address(this)) {
                revert CannotReplaceImmutableFunction(selector);
            }
            if (oldFacetAddress == _facetAddress) {
                revert CannotReplaceFunctionWithTheSameFunctionFromTheSameFacet(selector);
            }
            if (oldFacetAddress == address(0)) {
                revert CannotReplaceFunctionThatDoesNotExists(selector);
            }
            // replace old facet address
            ds.facetAddressAndSelectorPosition[selector].facetAddress = _facetAddress;
        }
    }

    function removeFunctions(address _facetAddress, bytes4[] memory _functionSelectors) internal {
        DiamondStorage storage ds = diamondStorage();
        uint256 selectorCount = ds.selectors.length;
        if (_facetAddress != address(0)) {
            revert RemoveFacetAddressMustBeZeroAddress(_facetAddress);
        }
        for (uint256 selectorIndex; selectorIndex < _functionSelectors.length; selectorIndex++) {
            bytes4 selector = _functionSelectors[selectorIndex];
            FacetAddressAndSelectorPosition memory oldFacetAddressAndSelectorPosition = ds
                .facetAddressAndSelectorPosition[selector];
            if (oldFacetAddressAndSelectorPosition.facetAddress == address(0)) {
                revert CannotRemoveFunctionThatDoesNotExist(selector);
            }

            // can't remove immutable functions -- functions defined directly in the diamond
            if (oldFacetAddressAndSelectorPosition.facetAddress == address(this)) {
                revert CannotRemoveImmutableFunction(selector);
            }
            // replace selector with last selector
            selectorCount--;
            if (oldFacetAddressAndSelectorPosition.selectorPosition != selectorCount) {
                bytes4 lastSelector = ds.selectors[selectorCount];
                ds.selectors[oldFacetAddressAndSelectorPosition.selectorPosition] = lastSelector;
                ds.facetAddressAndSelectorPosition[lastSelector].selectorPosition = oldFacetAddressAndSelectorPosition
                    .selectorPosition;
            }
            // delete last selector
            ds.selectors.pop();
            delete ds.facetAddressAndSelectorPosition[selector];
        }
    }

    function initializeDiamondCut(address _init, bytes memory _calldata) internal {
        if (_init == address(0)) {
            return;
        }
        enforceHasContractCode(_init, "LibDiamondCut: _init address has no code");
        (bool success, bytes memory error) = _init.delegatecall(_calldata);
        if (!success) {
            if (error.length > 0) {
                // bubble up error
                /// @solidity memory-safe-assembly
                assembly {
                    let returndata_size := mload(error)
                    revert(add(32, error), returndata_size)
                }
            } else {
                revert InitializationFunctionReverted(_init, _calldata);
            }
        }
    }

    function enforceHasContractCode(address _contract, string memory _errorMessage) internal view {
        uint256 contractSize;
        assembly {
            contractSize := extcodesize(_contract)
        }
        if (contractSize == 0) {
            revert NoBytecodeAtAddress(_contract, _errorMessage);
        }
    }
}
