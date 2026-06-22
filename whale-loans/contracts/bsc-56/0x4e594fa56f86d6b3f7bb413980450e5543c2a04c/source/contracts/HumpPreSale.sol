// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.7.5;

import "./types/Ownable.sol";
import "./libraries/SafeERC20.sol";
import "./libraries/SafeMath.sol";
import "./libraries/Address.sol";

contract HUMPPreSale is Ownable {
    using SafeMath for uint;
    using SafeERC20 for IERC20;  
    
    address public aHUMP;
    address public BUSD;
    address public addressToSendBusd;
    
    uint public salePrice;
    uint public totalWhiteListed;
    uint public endOfSale;

    bool public saleStarted;

    mapping(address => bool) boughtHUMP;
    mapping(address => bool) whiteListed;

    function whiteListBuyers( address[] memory _buyers ) external onlyOwner() returns ( bool ) {
        require(saleStarted == false, 'Already initialized');

        totalWhiteListed = totalWhiteListed.add( _buyers.length );

        for( uint i; i < _buyers.length; i++ ) {
            whiteListed[_buyers[i]] = true;
        }

        return true;
    }

    function initialize ( address _addressToSendBusd, address _busd, address _aHUMP, uint _salePrice, uint _saleLength ) external onlyOwner() returns(bool) {
        require(saleStarted == false, 'Already initialized');

        aHUMP = _aHUMP;
        BUSD = _busd;

        salePrice = _salePrice;
        
        endOfSale = _saleLength.add(block.timestamp);

        saleStarted = true;

        addressToSendBusd = _addressToSendBusd;

        return true;
    }

    function getAllotmentPerBuyer() public view returns (uint) {
        return IERC20( aHUMP ).balanceOf(address(this)).div(totalWhiteListed);
    }

    function purchaseaHUMP(uint _amountBUSD) external returns(bool) {
        require (saleStarted == true, 'Not started');
        require(whiteListed[msg.sender] == true, 'Not whitelisted');
        require(boughtHUMP[msg.sender] == false, 'Already participated');
        require(block.timestamp < endOfSale, 'Sale over');

        boughtHUMP[msg.sender] = true;

        uint _purchaseAmount = _calculateSaleQuote( _amountBUSD );

        require(_purchaseAmount <= getAllotmentPerBuyer(), 'More than alloted');
        totalWhiteListed = totalWhiteListed.sub(1);

        IERC20( BUSD ).safeTransferFrom(msg.sender, addressToSendBusd, _amountBUSD);
        IERC20( aHUMP ).safeTransfer(msg.sender, _purchaseAmount);

        return true;
    }

    function sendRemainingaHUMP() external onlyOwner() returns(bool) {
        require (saleStarted == true, 'Not started');
        require (block.timestamp >= endOfSale, 'Not ended');

        IERC20( aHUMP ).safeTransfer(msg.sender, IERC20( aHUMP ).balanceOf(address(this)));

        return true;

    }

    function _calculateSaleQuote( uint paymentAmount_ ) internal view returns ( uint ) {
      return uint(1e9).mul(paymentAmount_).div(salePrice);
    }

    function calculateSaleQuote( uint paymentAmount_ ) external view returns ( uint ) {
      return _calculateSaleQuote( paymentAmount_ );
    }
}