// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.7;

import '@openzeppelin/contracts/access/Ownable.sol';
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract MultiSender is Ownable {
    mapping(address => uint256) public txCount;
    uint16 public arrayLimit = 150;
    uint256 public discountStep = 0.00005 ether;
    uint256 public fee = 0.05 ether;

    event Multisended(uint256 total, address tokenAddress);
    event ClaimedTokens(address token, address owner, uint256 balance);

    modifier hasFee() {
        uint256 delta = discountRate(_msgSender());
        if (fee <= delta) {
            delta = fee;
        }
        require(msg.value >= fee - delta);
        _;
    }

    receive() external payable {}

    function discountRate(address _customer) public view returns (uint256) {
        uint256 count = txCount[_customer];
        return count * discountStep;
    }

    function currentFee(address _customer) public view returns (uint256) {
        return fee - discountRate(_customer);
    }

    function changeTreshold(uint16 _newLimit) public onlyOwner {
        arrayLimit = _newLimit;
    }

    function changeFee(uint256 _newFee) public onlyOwner {
        fee = _newFee;
    }

    function changeDiscountStep(uint256 _newStep) public onlyOwner {
        discountStep = _newStep;
    }

    function multisendToken(
        address token,
        address[] memory _contributors,
        uint256[] memory _balances
    ) public payable hasFee {
        uint256 total = 0;
        require(_contributors.length <= arrayLimit);
        IERC20 erc20token = IERC20(token);
        uint8 i = 0;
        require(erc20token.allowance(_msgSender(), address(this)) > 0);
        for (i; i < _contributors.length; i++) {
            erc20token.transferFrom(_msgSender(), _contributors[i], _balances[i]);
            total += _balances[i];
        }
        txCount[_msgSender()]++;
        emit Multisended(total, token);
    }

    function multisendEther(
        address payable[] memory  _contributors,
        uint256[] memory _balances
    ) public payable hasFee {
        // this function is always free, however if there is anything left over, I will keep it.
        uint256 total = 0;
        require(_contributors.length <= arrayLimit);
        uint8 i = 0;
        for (i; i < _contributors.length; i++) {
            _contributors[i].transfer(_balances[i]);
            total += _balances[i];
        }
        txCount[_msgSender()]++;
        emit Multisended(total, address(0));
    }

    function claimTokens(address _token) public onlyOwner {
        if (_token == address(0x0)) {
            (bool sent, ) = _msgSender().call{value: address(this).balance}("");
            require(sent, "Failed to send Ether");
            return;
        }
        IERC20 erc20token = IERC20(_token);
        uint256 balance = erc20token.balanceOf(address(this));
        erc20token.transfer(_msgSender(), balance);
        emit ClaimedTokens(_token, _msgSender(), balance);
    }
}
