// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "./ERC721A/IERC721A.sol";

interface IERC20 {
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function transfer(address to, uint256 amount) external returns (bool);
    function allowance(address owner, address spender) external view returns (uint256);
    function approve(address spender, uint256 amount) external returns (bool);
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
}

contract Airdrop {
    mapping(address => uint) failTransferList;

    function multiTransferToken(address _token, address[] calldata _addresses, uint256 _amount) external {
        IERC20 token = IERC20(_token);
        uint _amountSum = _amount * _addresses.length;
        require(token.allowance(msg.sender, address(this)) > _amountSum, "Need Approve ERC20 token");

        for (uint256 i; i < _addresses.length; i++) {
            token.transferFrom(msg.sender, _addresses[i], _amount);
        }
    }

    function multiTransferToken(address _token, address[] calldata _addresses, uint256[] calldata _amounts) external {
        require(_addresses.length == _amounts.length, "Lengths of Addresses and Amounts NOT EQUAL");
        IERC20 token = IERC20(_token);
        uint _amountSum = getSum(_amounts);
        require(token.allowance(msg.sender, address(this)) > _amountSum, "Need Approve ERC20 token");

        for (uint256 i; i < _addresses.length; i++) {
            token.transferFrom(msg.sender, _addresses[i], _amounts[i]);
        }
    }

    function multiTransferMNT(address payable[] calldata _addresses, uint256[] calldata _amounts) public payable {
        require(_addresses.length == _amounts.length, "Lengths of Addresses and Amounts NOT EQUAL");
        uint _amountSum = getSum(_amounts);
        require(msg.value == _amountSum, "Transfer amount error");
        for (uint256 i = 0; i < _addresses.length; i++) {
            (bool success, ) = _addresses[i].call{ value: _amounts[i] }("");
            if (!success) {
                failTransferList[_addresses[i]] = _amounts[i];
            }
        }
    }

    function multiTransferMNT(address payable[] calldata _addresses, uint256 _amount) public payable {
        uint _amountSum = _amount * _addresses.length;
        require(msg.value == _amountSum, "Transfer amount error");
        for (uint256 i = 0; i < _addresses.length; i++) {
            (bool success, ) = _addresses[i].call{ value: _amount }("");
            if (!success) {
                failTransferList[_addresses[i]] = _amount;
            }
        }
    }

    function getSum(uint256[] calldata _arr) public pure returns (uint sum) {
        for (uint i = 0; i < _arr.length; i++) sum = sum + _arr[i];
    }

    function withdrawFromFailList(address _to) public {
        uint failAmount = failTransferList[msg.sender];
        require(failAmount > 0, "You are not in failed list");
        failTransferList[msg.sender] = 0;
        (bool success, ) = _to.call{ value: failAmount }("");
        require(success, "Fail withdraw");
    }

    function multiTransferNFT(address _token, address[] calldata _addresses, uint256[] calldata _tokenIds) external {
        require(_addresses.length == _tokenIds.length, "Lengths of Addresses and Amounts NOT EQUAL");

        IERC721A token = IERC721A(_token);
        require(token.balanceOf(msg.sender) >= _tokenIds.length, "Insufficient Balance");
        require(token.isApprovedForAll(msg.sender, address(this)), "Need Approve ERC721 token");

        for (uint256 i = 0; i < _addresses.length; i++) {
            token.safeTransferFrom(msg.sender, _addresses[i], _tokenIds[i], "");
        }
    }

    function multiTransferNFT(address _token, address[] calldata _addresses, uint256 fromTokenId) external {
        uint256 tokenIdLength = _addresses.length;
        require(_addresses.length == tokenIdLength, "Lengths of Addresses and Amounts NOT EQUAL");

        IERC721A token = IERC721A(_token);
        require(token.balanceOf(msg.sender) >= tokenIdLength, "Insufficient Balance");
        require(token.isApprovedForAll(msg.sender, address(this)), "Need Approve ERC721 token");

        for (uint256 i = 0; i < _addresses.length; i++) {
            token.safeTransferFrom(msg.sender, _addresses[i], fromTokenId + i, "");
        }
    }
}
