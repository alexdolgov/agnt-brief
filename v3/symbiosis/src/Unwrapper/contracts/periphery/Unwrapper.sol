pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/Context.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@uniswap/lib/contracts/libraries/TransferHelper.sol";
import "../synth-core/interfaces/IWrapper.sol";

/**
 * @title A contract that implements the unwrap and transfer logic
 */
contract Unwrapper is Context, Ownable {

    address public wrapper;

    event Unwrapped(uint256 amount, address indexed to);

    /**
     * CONSTRUCTOR
     */
    constructor(address _wrapper) public {
        wrapper = _wrapper;
    }

    /**
    * @notice Set wrapper
     */
    function setWrapper(address _newWrapper) external onlyOwner {
        wrapper = _newWrapper;
    }

    /**
     * @notice Implements an unwrap logic with transfer
     * @param _amountIn input amount
     * @param _to address to send gas token
     */
    function unwrap(
        uint256 _amountIn,
        address _to
    ) external {
        TransferHelper.safeTransferFrom(wrapper, _msgSender(), address(this), _amountIn);
        IWrapper(wrapper).withdraw(_amountIn);
        TransferHelper.safeTransferETH(_to, _amountIn);

        emit Unwrapped(_amountIn, _to);
    }

    receive() external payable {}
}
