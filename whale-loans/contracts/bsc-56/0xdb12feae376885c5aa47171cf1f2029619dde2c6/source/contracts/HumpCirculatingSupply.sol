// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.7.5;

import './lib/SafeMath.sol';
import './interfaces/IERC20.sol';

contract HUMPCirculatingSupplyConrtact {
    using SafeMath for uint;

    address public HUMP;
    address public owner;
    address[] public nonCirculatingHUMPAddresses;

    constructor( address _owner, address _hump ) {        
        owner = _owner;
        HUMP = _hump;
    }

    function HUMPCirculatingSupply() external view returns ( uint ) {
        uint _totalSupply = IERC20( HUMP ).totalSupply();

        uint _circulatingSupply = _totalSupply.sub( getNonCirculatingHUMP() );

        return _circulatingSupply;
    }

    function getNonCirculatingHUMP() public view returns ( uint ) {
        uint _nonCirculatingHUMP;

        for( uint i=0; i < nonCirculatingHUMPAddresses.length; i = i.add( 1 ) ) {
            _nonCirculatingHUMP = _nonCirculatingHUMP.add( IERC20( HUMP ).balanceOf( nonCirculatingHUMPAddresses[i] ) );
        }

        return _nonCirculatingHUMP;
    }

    function setNonCirculatingHUMPAddresses( address[] calldata _nonCirculatingAddresses ) external returns ( bool ) {
        require( msg.sender == owner, "Sender is not owner" );
        nonCirculatingHUMPAddresses = _nonCirculatingAddresses;

        return true;
    }

    function transferOwnership( address _owner ) external returns ( bool ) {
        require( msg.sender == owner, "Sender is not owner" );

        owner = _owner;

        return true;
    }
}