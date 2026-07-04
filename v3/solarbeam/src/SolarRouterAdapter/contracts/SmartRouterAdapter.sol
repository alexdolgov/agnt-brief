// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/draft-ERC20Permit.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "../interfaces/IWrappedNative.sol";

abstract contract SmartRouterAdapter is Ownable {
    using SafeERC20 for IERC20;

    event SmartRuterAdapterSwap(
        address indexed _tokenFrom, 
        address indexed _tokenTo, 
        uint _amountIn, 
        uint _amountOut
    );

    event UpdatedGasEstimate(
        address indexed _adapter,
        uint _newEstimate
    );

    event Recovered(
        address indexed _asset, 
        uint amount
    );

    address internal constant NATIVE = address(0);
    uint internal constant UINT_MAX = type(uint).max;

    uint public swapGasEstimate;
    string public name;
    address public wnative;

    function setSwapGasEstimate(uint _estimate) public onlyOwner {
        swapGasEstimate = _estimate;
        emit UpdatedGasEstimate(address(this), _estimate);
    }

    /**
     * @notice Revoke token allowance
     * @param _token address
     * @param _spender address
     */
    function revokeAllowance(address _token, address _spender) external onlyOwner {
        IERC20(_token).safeApprove(_spender, 0);
    }

    /**
     * @notice Recover ERC20 from contract
     * @param _tokenAddress token address
     * @param _tokenAmount amount to recover
     */
    function recoverERC20(address _tokenAddress, uint _tokenAmount) external onlyOwner {
        require(_tokenAmount > 0, "Nothing to recover");
        IERC20(_tokenAddress).safeTransfer(msg.sender, _tokenAmount);
        emit Recovered(_tokenAddress, _tokenAmount);
    }

    /**
     * @notice Recover MOVR from contract
     * @param _amount amount
     */
    function recoverMOVR(uint _amount) external onlyOwner {
        require(_amount > 0, "Nothing to recover");
        payable(msg.sender).transfer(_amount);
        emit Recovered(address(0), _amount);
    }

    function query(
        uint _amountIn, 
        address _tokenIn, 
        address _tokenOut
    ) external view returns (uint) {
        return _query(
            _amountIn, 
            _tokenIn, 
            _tokenOut
        );
    }

    /**
     * Execute a swap from token to token assuming this contract already holds input tokens
     * @notice Interact through the router
     * @param _amountIn input amount in starting token
     * @param _amountOut amount out in ending token
     * @param _fromToken ERC20 token being sold
     * @param _toToken ERC20 token being bought
     * @param _to address where swapped funds should be sent to
     */
    function swap(
        uint _amountIn, 
        uint _amountOut,
        address _fromToken, 
        address _toToken, 
        address _to
    ) external {
        _approveIfNeeded(_fromToken, _amountIn);
        _swap(_amountIn, _amountOut, _fromToken, _toToken, _to);
        emit SmartRuterAdapterSwap(
            _fromToken, 
            _toToken,
            _amountIn, 
            _amountOut 
        );
    } 

    /**
     * @notice Return expected funds to user
     * @dev Skip if funds should stay in the contract
     * @param _token address
     * @param _amount tokens to return
     * @param _to address where funds should be sent to
     */
    function _returnTo(address _token, uint _amount, address _to) internal {
        if (address(this)!=_to) {
            IERC20(_token).safeTransfer(_to, _amount);
        }
    }

    /**
     * @notice Wrap MOVR
     * @param _amount amount
     */
    function _wrap(uint _amount) internal {
        IWrappedNative(wnative).deposit{value: _amount}();
    }

    /**
     * @notice Unwrap WMOVR
     * @param _amount amount
     */
    function _unwrap(uint _amount) internal {
        IWrappedNative(wnative).withdraw(_amount);
    }

    /**
     * @notice Internal implementation of a swap
     * @dev Must return tokens to address(this)
     * @dev Wrapping is handled external to this function
     * @param _amountIn amount being sold
     * @param _amountOut amount being bought
     * @param _fromToken ERC20 token being sold
     * @param _toToken ERC20 token being bought
     * @param _to Where recieved tokens are sent to
     */
    function _swap(
        uint _amountIn, 
        uint _amountOut, 
        address _fromToken, 
        address _toToken, 
        address _to
    ) internal virtual;

    function _query(
        uint _amountIn,
        address _tokenIn, 
        address _tokenOut
    ) internal virtual view returns (uint);

    /**
     * @notice Approve tokens for use in Strategy
     * @dev Should use modifier `onlyOwner` to avoid griefing
     */
    function setAllowances() public virtual;

    function _approveIfNeeded(address _tokenIn, uint _amount) internal virtual;

    receive() external payable {}
}