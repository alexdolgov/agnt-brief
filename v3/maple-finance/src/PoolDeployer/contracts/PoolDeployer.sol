// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/access/Ownable.sol";

import "./interfaces/IMetaPoolFactory.sol";
import "./interfaces/ICryptoPoolFactory.sol";
import "./interfaces/ICryptoPool.sol";
import "./interfaces/IStablePool.sol";
import "./interfaces/IWETH.sol";
import "./interfaces/ITokenClaim.sol";

contract PoolDeployer is Ownable {
    error ZeroAddress();
    error ZeroValue();

    uint256 public constant PRECISION = 1e18;

    uint256 public constant JPEG_PETH_OLD_TOTAL_SUPPLY = 1954993074759827992913957;
    uint256 public constant JPEG_PETH_OLD_VIRTUAL_PRICE = 1005100781903033146;
    uint256 public constant JPEG_PETH_OLD_PRICE_SCALE = 2679005902512888345626761;

    IMetaPoolFactory public immutable METAPOOL_FACTORY;
    ICryptoPoolFactory public immutable CRYPTOPOOL_FACTORY;
    ICryptoPool public immutable JPEG_ETH;
    ICryptoPool public immutable OLD_JPEG_PETH;
    IWETH public immutable WETH;
    IERC20 public immutable PETH_OLD;
    IERC20 public immutable PETH;
    IERC20 public immutable JPEG;

    address public immutable CLAIM_CONTRACT;

    constructor(address _metaPoolFactory, address _cryptoPoolFactory, address _jpegEth, address _oldJpegPeth, address _weth, address _oldPeth, address _newPeth, address _jpeg, address _claimContract) {
        if (
            _metaPoolFactory == address(0) || 
            _cryptoPoolFactory == address(0) || 
            _jpegEth == address(0) || 
            _oldJpegPeth == address(0) ||
            _weth == address(0) || 
            _oldPeth == address(0) || 
            _newPeth == address(0) || 
            _jpeg == address(0) ||
            _claimContract == address(0)
        )
            revert ZeroAddress();

        METAPOOL_FACTORY = IMetaPoolFactory(_metaPoolFactory);
        CRYPTOPOOL_FACTORY = ICryptoPoolFactory(_cryptoPoolFactory);
        JPEG_ETH = ICryptoPool(_jpegEth);
        OLD_JPEG_PETH = ICryptoPool(_oldJpegPeth);
        WETH = IWETH(_weth);
        PETH_OLD = IERC20(_oldPeth);
        PETH = IERC20(_newPeth);
        JPEG = IERC20(_jpeg);

        CLAIM_CONTRACT = _claimContract;
    }
    
    function deployPools(uint256 _oldPethSellAmount, uint256 _targetJPEGPETHSupply) external payable onlyOwner returns (IStablePool _pethWeth, ICryptoPool _jpegPeth) {
        if (msg.value == 0 || _oldPethSellAmount == 0)
            revert ZeroValue();

        PETH_OLD.transferFrom(msg.sender, address(this), _oldPethSellAmount);
        PETH_OLD.approve(address(OLD_JPEG_PETH), _oldPethSellAmount);
        uint256 _receivedLPs = OLD_JPEG_PETH.add_liquidity([0, _oldPethSellAmount], 0, false, address(this));
        IERC20(OLD_JPEG_PETH.token()).approve(address(OLD_JPEG_PETH), _receivedLPs);
        uint256 _receivedJPEG = OLD_JPEG_PETH.remove_liquidity_one_coin(_receivedLPs, 0, 0);

        uint256 _jpegPriceScale = PRECISION * PRECISION / JPEG_ETH.price_scale();
        uint256[2] memory _jpegPETHAmounts = _calculateJPEGPETHBalances(_targetJPEGPETHSupply, _jpegPriceScale);
        
        if (_receivedJPEG > _jpegPETHAmounts[0])
            JPEG.transfer(msg.sender, _receivedJPEG - _jpegPETHAmounts[0]);
        else
            JPEG.transferFrom(msg.sender, address(this), _jpegPETHAmounts[0] - _receivedJPEG);

        PETH.transferFrom(msg.sender, address(this), _jpegPETHAmounts[1] + msg.value);
        WETH.deposit{ value: msg.value }();

        _pethWeth = IStablePool(METAPOOL_FACTORY.deploy_plain_pool(
            "pETH", 
            "pETH-WETH", 
            [address(WETH), address(PETH), address(0), address(0)], 
            3, 
            4000000, 
            1, 
            4
        ));
        WETH.approve(address(_pethWeth), msg.value);
        PETH.approve(address(_pethWeth), msg.value);
        _pethWeth.add_liquidity([msg.value, msg.value], 0, CLAIM_CONTRACT);

        _jpegPeth = ICryptoPool(CRYPTOPOOL_FACTORY.deploy_pool(
            "JPEG/pETH", 
            "JPEGpETH", 
            [address(JPEG), address(PETH)], 
            400000, 
            145000000000000, 
            26000000, 
            45000000, 
            2000000000000, 
            230000000000000, 
            146000000000000, 
            5000000000, 
            600, 
            _jpegPriceScale
        ));
        JPEG.approve(address(_jpegPeth), _jpegPETHAmounts[0]);
        PETH.approve(address(_jpegPeth), _jpegPETHAmounts[1]);
        _jpegPeth.add_liquidity(_jpegPETHAmounts, _targetJPEGPETHSupply, false, CLAIM_CONTRACT);

        ITokenClaim(CLAIM_CONTRACT).enableClaim(address(_pethWeth), _jpegPeth.token());
    }

    function _calculateJPEGPETHBalances(uint256 _newLPTotalSupply, uint256 _newPriceScale) internal pure returns (uint256[2] memory) {
        uint256 _xcp = JPEG_PETH_OLD_TOTAL_SUPPLY * JPEG_PETH_OLD_VIRTUAL_PRICE / PRECISION;
        _xcp = _xcp * _newLPTotalSupply / JPEG_PETH_OLD_TOTAL_SUPPLY;

        uint256 _D = _sqrt(_newPriceScale) * _xcp * 2 / PRECISION;
        return [_D / 2, _D * PRECISION / (_newPriceScale * 2)];
    }

    function _sqrt(uint256 x) internal pure returns (uint256) {
        if (x == 0)
            return 0;
        
        uint256 z = (x + PRECISION) / 2;
        uint256 y = x;

        for (uint256 i; i < 256; ++i) {
            if (z == y)
                return y;
            y = z;
            z = (x * PRECISION / z + z) / 2;
        }

        revert();
    }
}
