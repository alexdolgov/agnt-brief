// File: @openzeppelin/contracts/token/ERC20/IERC20.sol


// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.20;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20 {
    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);

    /**
     * @dev Returns the value of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the value of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 value) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets a `value` amount of tokens as the allowance of `spender` over the
     * caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 value) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the
     * allowance mechanism. `value` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 value) external returns (bool);
}

// File: @openzeppelin/contracts/interfaces/IERC20.sol


// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/IERC20.sol)

pragma solidity ^0.8.20;


// File: contracts/FeeLiquidator.sol


pragma solidity ^0.8.20;


error NotMultisig();
error NotLiquidator();
error NoStateChange();
error NotSuccessful();

contract FeeLiquidator {
    address private multisig;
    address public odos;
    mapping(address => bool) public liquidator;
    mapping(address => bool) public validAssetToAccumulate;

    modifier onlyMultisig() {
        if (msg.sender != multisig) revert NotMultisig();
        _;
    }

    modifier onlyLiquidator() {
        if (!liquidator[msg.sender]) revert NotLiquidator();
        _;
    }

    constructor(address _multisig, address _odos) {
        (multisig, odos) = (_multisig, _odos);
    }

    ///@notice allows the multisig to give the liquidator status or remove the status, from an address
    function assignLiquidatorStatus(address _liquidator, bool _status)
        external
        onlyMultisig
    {
        if (_status == liquidator[_liquidator]) revert NoStateChange();
        liquidator[_liquidator] = _status;
    }

    ///@notice multisig rights to whitelist a valid assets to prevent fumbling
    function whitelistValidAssets(
        address[] calldata _assets,
        bool[] calldata _status
    ) external onlyMultisig {
        for (uint256 i = 0; i < _assets.length; ++i) {
            validAssetToAccumulate[_assets[i]] = _status[i];
        }
    }

    ///@notice converts the earned fees for the treasury
    ///@dev uses odos calldata for offchain calculations via arbitrary calls
    function liquidateFees(address _token, bytes calldata _odosCallData)
        external
        onlyLiquidator
    {
        IERC20(_token).approve(odos, IERC20(_token).balanceOf(address(this)));
        (bool success, ) = odos.call(_odosCallData);
        if (!success) revert NotSuccessful();
    }

    ///@notice allows the multisig to clawback tokens that were not processed
    ///@dev gated
    function clawback(address[] calldata _tokens) external onlyMultisig {
        for (uint256 i = 0; i < _tokens.length; ++i) {
            IERC20 token = IERC20(_tokens[i]);
            token.transfer(multisig, token.balanceOf(address(this)));
        }
    }

    function execute(address _x, bytes calldata _data) external onlyMultisig {
        (bool success, ) = _x.call(_data);
        if (!success) revert NotSuccessful();
    }

    ///@notice returns true or false if the asset is whitelisted
    ///@dev prevents input errors on odos swaps
    function isValidAsset(address _token) public view returns (bool) {
        return validAssetToAccumulate[_token];
    }

    receive() external payable {} /// @dev so it can collect ETH if needed
}