// SPDX-License-Identifier: MIT

pragma solidity >=0.7.5;

import {PoolKey} from "@uniswap/v4-core/src/types/PoolKey.sol";
import {Hooks} from "@uniswap/v4-core/src/libraries/Hooks.sol";

interface IUniversalRouter {
    /// @notice Thrown when a required command has failed
    error ExecutionFailed(uint256 commandIndex, bytes message);

    /// @notice Thrown when attempting to send ETH directly to the contract
    error ETHNotAccepted();

    /// @notice Thrown when executing commands with an expired deadline
    error TransactionDeadlinePassed();

    /// @notice Thrown when attempting to execute commands and an incorrect number of inputs are provided
    error LengthMismatch();

    // @notice Thrown when an address that isn't WETH tries to send ETH to the router without calldata
    error InvalidEthSender();

    /// @notice Executes encoded commands along with provided inputs. Reverts if deadline has expired.
    /// @param commands A set of concatenated commands, each 1 byte in length
    /// @param inputs An array of byte strings containing abi encoded inputs for each command
    /// @param deadline The deadline by which the transaction must be executed
    function execute(bytes calldata commands, bytes[] calldata inputs, uint256 deadline) external payable;
}

struct ExactInputSingleParams {
    PoolKey poolKey;
    bool zeroForOne;
    uint128 amountIn;
    uint128 amountOutMinimum;
    bytes hookData;
}

interface IPunkStrategy {
    // View functions
    function loadingLiquidity() external view returns (bool);
    function owner() external view returns (address);
    function name() external pure returns (string memory);
    function symbol() external pure returns (string memory);
    function hookAddress() external view returns (address);
    function currentFees() external view returns (uint256);
    function reward() external view returns (uint256);
    function lastPunkSalePrice() external view returns (uint256);
    function priceMultiplier() external view returns (uint256);
    function canProcessPunkSale() external view returns (bool);
    
    // Admin functions
    function loadLiquidity(address _hook) external payable;
    function transferEther(address _to, uint256 _amount) external payable;
    function setReward(uint256 _newReward) external;
    function setPriceMultiplier(uint256 _newMultiplier) external;
    function transferOwnership(address newOwner) external;
    
    // Mechanism functions
    function addFees() external payable;
    function buyPunkAndRelist(uint256 punkId) external returns (uint256);
    function processPunkSale() external returns (uint256);
    
    // Constants
    function MAX_SUPPLY() external pure returns (uint256);
    function DEADADDRESS() external pure returns (address);
}

interface IPunkStrategyHook {
    // View functions
    function feeBips() external view returns (uint128);
    function prePunkSellBips() external view returns (uint128);
    function feeSplit() external view returns (IFeeSplit);
    function calculateFee(bool isBuying) external view returns (uint128);
    function getHookPermissions() external pure returns (Hooks.Permissions memory);
    
    // Admin functions
    function transferToken(address _token, address _to, uint256 _amount) external payable;
    function updateFeeBips(uint128 _feeBips) external;
    function updateManualFees(bool _manuallyProcessFees) external;
    function updateFeeSplit(IFeeSplit _feeSplit) external;
    
    // Mechanism functions
    function feeCooldown() external;
    function punksAreAccumulating() external;
    function processAccumulatedFees() external;
}

interface IFeeSplit { 
    function processDeposit() external payable;
}

struct Offer {
    bool isForSale;
    uint punkIndex;
    address seller;
    uint minValue;
    address onlySellTo;
}

interface IPunks {
    function buyPunk(uint punkIndex) external payable;
    function offerPunkForSale(uint punkIndex, uint minSalePriceInWei) external;
    function punksOfferedForSale(uint punkId) external view returns (bool isForSale, uint punkIndex, address seller, uint minValue, address onlySellTo);
    function balanceOf(address owner) external view returns (uint256);
    function punkIndexToAddress(uint punkIndex) external view returns (address);
    function withdraw() external;
    function pendingWithdrawals(address owner) external view returns (uint);
    function transferPunk(address to, uint punkIndex) external;
}

interface IERC20 {
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function transfer(address to, uint256 amount) external returns (bool);
    function allowance(address owner, address spender) external view returns (uint256);
    function approve(address spender, uint256 amount) external returns (bool);
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
}

interface IValidRouter {
    function msgSender() external view returns (address);
}