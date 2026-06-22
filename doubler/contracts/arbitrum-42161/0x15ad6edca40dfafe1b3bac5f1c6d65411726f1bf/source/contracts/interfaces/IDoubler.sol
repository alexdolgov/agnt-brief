// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.20;

/**
 * @title IDoubler
 * @dev Interface for the Doubler contract, including custom errors, structures, and event definitions.
 */
interface IDoubler {
    // Custom errors
    error E_Asset(); // Error for invalid asset operations
    error E_Disable(); // Error for disabled actions due to pool conditions
    error E_PoolEnd(); // Error indicating the pool has ended
    error E_FeeLimit(); // Error for exceeding fee limits
    error E_ZeroAddr(); // Error for zero address inputs
    error E_Balance(); // Error for insufficient balance
    error E_InputLimit(); // Error for input limit violations
    error E_Expected(); // Error for unmet expected conditions in slippage
    error E_SlipLimit(); // Error for exceeding slippage limit
    error E_BlockOnce(); // Error for multiple calls in the same block
    error E_WithdrawLimit(); // Error for exceeding withdraw limits
    error E_EndTime(); // Error for invalid end time settings
    error E_PriceLimit(); // Error for price limit violations
    error E_Ownable(); // Error for unauthorized access by non-owner

    // Structure for Pool information
    struct Pool {
        bool isNative; // Indicates if the asset is a native token (e.g., ETH)
        uint16 inputFee; // Fee percentage for inputs
        uint16 withdrawFee; // Fee percentage for withdrawals
        uint256 id; // Pool identifier
        uint256 lastPrice; // Last recorded price
        uint256 cLastRbTime; // Last rebalance time for cToken
        uint256 lowerOfInputMaximum; // Lower bound of input maximum limit
        uint256 endPrice; // Final price when the pool ends
        uint256 startTime; // Pool start time
        uint256 lastDayRate; // Last daily inflation rate
        uint256 endTime; // Pool end time
        address asset; // Address of the asset
        address cToken; // Address of the cToken
        address bToken; // Address of the bToken
        address creator; // Address of the pool creator
    }

    // Structure for modified pool parameters
    struct MPool {
        uint16 inputFee; // Fee percentage for inputs
        uint16 withdrawFee; // Fee percentage for withdrawals
        uint256 endTime; // New end time for the pool
        address creator; // Address of the pool creator
    }

    // Structure for withdrawal parameters
    struct WithdrawParam {
        address asset; // Address of the asset to withdraw
        uint256 cAmount; // Amount of cToken to withdraw
        uint256 qAmount; // Expected quantity of the asset to withdraw
        uint16 clientSlip; // Client slip percentage for slippage tolerance
    }

    // Events
    event Input(
        address indexed asset,
        uint256 indexed poolId,
        address to,
        uint256 qAmount,
        uint256 bAmount,
        uint256 cAmount,
        uint256 extBAmount
    );

    event Withdraw(
        address indexed asset,
        uint256 indexed poolId,
        address to,
        uint256 cAmount,
        uint256 bAmount,
        uint256 assetAmount
    );

    event UpdatePool(address indexed asset, address creator, uint16 inputFee, uint16 withdrawFee, uint256 endTime);
    event UpdateLowerOfInputMaximum(uint256 oldInputLowerOfMaximum, uint256 newInputLowerOfMaximum);
    event EndPool(address asset, uint256 poolId, uint256 endTime, uint256 endPrice);
    event PoolStream(
        address asset,
        uint256 poolId,
        uint256 qAmount,
        uint256 bTotal,
        uint256 cTotal,
        uint256 curPrice,
        uint256 avg
    );
    // Functions
    function getUserExtraBToken(address _to) external view returns(uint256);
    function updatePool(MPool calldata _updatePool) external;
    function inputEth(uint256 _qAmount, address _to) external payable;
    function input(uint256 _qAmount, address _to) external;
    function withdraw(uint256 _cAmount, uint256 _qAmount, uint16 _clientSlip) external;
    function claim() external;
    function getPool() external view returns (Pool memory pool);
    function rebaseCToken() external;
    function endPool() external returns (bool);
}
