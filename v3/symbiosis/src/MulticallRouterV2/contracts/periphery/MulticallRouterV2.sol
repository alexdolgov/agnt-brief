pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/Context.sol";
import "@uniswap/lib/contracts/libraries/TransferHelper.sol";
import "../utils/RevertMessageParser.sol";

/**
 * @title A contract that implements the chain of the calls on different contracts
 * @dev All function calls are currently implemented without side effects
 */
contract MulticallRouterV2 is Context {
    /**
     * @notice Implements a chain of external calls with native input token
     * @param _calldata array of encoded methods
     * @param _receiveSides array of contracts on which methods executions will take place
     * @param _path path of tokens
     * @param _offset array of shifts to patch the amount to calldata
     * @param _to address to send the dest token
     */
    function multicall(
        uint256 _amountIn,
        bytes[] memory _calldata,
        address[] memory _receiveSides,
        address[] memory _path,
        uint256[] memory _offset,
        bool[] memory _isNativeIn,
        address _to
    ) external payable {
        if (_isNativeIn[0]) {
            require(msg.value > 0, "MulticallRouter: zero amount");
        } else {
            TransferHelper.safeTransferFrom(_path[0], _msgSender(), address(this), _amountIn);
        }

        for (uint256 i = 0; i < _calldata.length; i++) {
            if (_isNativeIn[i]) {
                uint256 currentAmountIn = address(this).balance;
                bytes memory currentCalldata = _prepareCall(_calldata[i], _offset[i], _receiveSides[i], currentAmountIn);

                (bool success, bytes memory data) = _receiveSides[i].call{value: currentAmountIn}(_calldata[i]);
                if (!success) {
                    revert(RevertMessageParser.getRevertMessage(data, "MulticallRouter: native call failed"));
                }
            } else {
                uint256 currentAmountIn = IERC20(_path[i]).balanceOf(address(this));
                bytes memory currentCalldata = _prepareCall(_calldata[i], _offset[i], _receiveSides[i], currentAmountIn);

                _lazyApprove(_path[i], _receiveSides[i], currentAmountIn);
                (bool success, bytes memory data) = _receiveSides[i].call(currentCalldata);
                if (!success) {
                    revert(RevertMessageParser.getRevertMessage(data, "MulticallRouter: call failed"));
                }
            }
        }

        uint256 finalAmountOut = IERC20(_path[_path.length - 1]).balanceOf(address(this));
        if (finalAmountOut != 0) {
            TransferHelper.safeTransfer(_path[_path.length - 1], _to, finalAmountOut);
        }

        uint256 finalAmountOutETH = address(this).balance;
        if (finalAmountOutETH != 0) {
            (bool sent, ) = _to.call{value: finalAmountOutETH}("");
            require(sent, "Failed to send Ether");
        }
    }

    /**
     * @notice Implements approve
     * @dev Internal function used to approve the token spending
     * @param _token token address
     * @param _to address to approve
     * @param _amount amount for which approve will be given
     */
    function _lazyApprove(address _token, address _to, uint256 _amount) internal {
        if (IERC20(_token).allowance(address(this), _to) < _amount) {
            TransferHelper.safeApprove(_token, _to, 0);
            TransferHelper.safeApprove(_token, _to, type(uint256).max);
        }
    }

    function _prepareCall(bytes memory _calldata, uint256 _offset, address _receiveSide, uint256 _amountIn) internal returns (bytes memory){
        uint256 size;
        if (_offset != 0){
            assembly {
                mstore(add(_calldata, _offset), _amountIn)
            }
        }
        assembly {
            size := extcodesize(_receiveSide)
        }
        require(size != 0, "MulticallRouter: call for a non-contract account");
        return _calldata;
    }

    receive() external payable {}
}
