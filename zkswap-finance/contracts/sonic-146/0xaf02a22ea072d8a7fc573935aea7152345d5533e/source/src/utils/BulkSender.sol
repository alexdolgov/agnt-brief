// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";


contract BulkSender is Ownable {

    function bulkSendERC20WithSameValue(address _tokenAddress, address[] calldata _to, uint _amount) public {
        
        uint256 sendAmount = (_to.length) * _amount;

        IERC20 token = IERC20(_tokenAddress);
        token.transferFrom(msg.sender, address(this), sendAmount);
        
        uint len = _to.length;

        for (uint i = 0; i < len; ++i) {
            token.transfer(_to[i], _amount);
        }

    }

    function bulkSendERC20WithDifferentValue(address _tokenAddress, address[] calldata _to, uint[] calldata _value, uint _totalAmount) public {
        require(_to.length == _value.length);
        IERC20 token = IERC20(_tokenAddress);

        token.transferFrom(msg.sender, address(this), _totalAmount);

        for (uint i = 0; i < _to.length; i++) {
            token.transfer(_to[i], _value[i]);
        }
    }

    function bulkSendNativeWithSameValue(address[] calldata _to, uint _amount) public payable {
        uint totalAmount = _to.length * _amount;
        require(msg.value == totalAmount, "Sent value does not match total amount");
        
        for (uint i = 0; i < _to.length; i++) {
            (bool success, ) = payable(_to[i]).call{value: _amount}("");
            require(success, "Native transfer failed");
        }
    }

    function bulkSendNativeWithDifferentValue(address[] calldata _to, uint[] calldata _value, uint _totalAmount) public payable {
        require(_to.length == _value.length, "Arrays length mismatch");
        
        require(msg.value == _totalAmount, "Sent value does not match total amount");
        
        for (uint i = 0; i < _to.length; i++) {
            (bool success, ) = payable(_to[i]).call{value: _value[i]}("");
            require(success, "Native transfer failed");
        }
    }


    function redeemFee(address _token, uint256 _value) external onlyOwner {

        if (_token == address(1)) { // NATIVE_TOKEN
            (bool success, ) = payable(msg.sender).call{ value: _value }("");
            require(success, "_safeTransferETH: failed");
        }
        else {
            IERC20(_token).transfer(msg.sender, _value);
        }
    }
}