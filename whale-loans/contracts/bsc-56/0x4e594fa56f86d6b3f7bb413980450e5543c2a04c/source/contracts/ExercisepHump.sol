// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.7.5;

import './libraries/SafeERC20.sol';
import './libraries/SafeMath.sol';
import './libraries/Address.sol';
import './interfaces/IERC20.sol';
import './interfaces/ITreasury.sol';
import './interfaces/IHUMP.sol';

contract ExercisepHUMP {
    using SafeMath for uint;
    using SafeERC20 for IERC20;
    
    address public owner;
    address public newOwner;
    
    address public immutable pHUMP;
    address public immutable HUMP;
    address public immutable BUSD;
    address public immutable treasury;
    
    struct Term {
        uint percent; // 4 decimals ( 5000 = 0.5% )
        uint claimed;
        uint max;
    }
    mapping( address => Term ) public terms;
    
    mapping( address => address ) public walletChange;
    
    constructor( address _pHUMP, address _hump, address _busd, address _treasury ) {
        owner = msg.sender;
        require( _pHUMP != address(0) );
        pHUMP = _pHUMP;
        require( _hump != address(0) );
        HUMP = _hump;
        require( _busd != address(0) );
        BUSD = _busd;
        require( _treasury != address(0) );
        treasury = _treasury;
    }

    // Sets terms for a new wallet
    function setTerms(address _vester, uint _amountCanClaim, uint _rate ) external returns ( bool ) {
        require( msg.sender == owner, "Sender is not owner" );
        require( _amountCanClaim >= terms[ _vester ].max, "cannot lower amount claimable" );
        require( _rate >= terms[ _vester ].percent, "cannot lower vesting rate" );

        terms[ _vester ].max = _amountCanClaim;
        terms[ _vester ].percent = _rate;

        return true;
    }

    // Allows wallet to redeem pHUMP for HUMP
    function exercise( uint _amount ) external returns ( bool ) {
        Term memory info = terms[ msg.sender ];
        require( redeemable( info ) >= _amount, 'Not enough vested' );
        require( info.max.sub( info.claimed ) >= _amount, 'Claimed over max' );

        IERC20( BUSD ).safeTransferFrom( msg.sender, address( this ), _amount );
        IHUMP( pHUMP ).burnFrom( msg.sender, _amount );

        IERC20( BUSD ).approve( treasury, _amount );
        uint HUMPToSend = ITreasury( treasury ).deposit( _amount, BUSD, 0 );

        terms[ msg.sender ].claimed = info.claimed.add( _amount );

        IERC20( HUMP ).safeTransfer( msg.sender, HUMPToSend );

        return true;
    }

    // Allows wallet owner to transfer rights to a new address
    function pushWalletChange( address _newWallet ) external returns ( bool ) {
        require( terms[ msg.sender ].percent != 0 );
        walletChange[ msg.sender ] = _newWallet;
        return true;
    }
    
    // Allows wallet to pull rights from an old address
    function pullWalletChange( address _oldWallet ) external returns ( bool ) {
        require( walletChange[ _oldWallet ] == msg.sender, "wallet did not push" );
        
        walletChange[ _oldWallet ] = address(0);
        terms[ msg.sender ] = terms[ _oldWallet ];
        delete terms[ _oldWallet ];
        
        return true;
    }

    // Amount a wallet can redeem based on current supply
    function redeemableFor( address _vester ) public view returns (uint) {
        return redeemable( terms[ _vester ]);
    }
    
    function redeemable( Term memory _info ) internal view returns ( uint ) {
        return ( IERC20( HUMP ).totalSupply().mul( _info.percent ).mul( 1000 ) ).sub( _info.claimed );
    }

    function pushOwnership( address _newOwner ) external returns ( bool ) {
        require( msg.sender == owner, "Sender is not owner" );
        require( _newOwner != address(0) );
        newOwner = _newOwner;
        return true;
    }
    
    function pullOwnership() external returns ( bool ) {
        require( msg.sender == newOwner );
        owner = newOwner;
        newOwner = address(0);
        return true;
    }
}