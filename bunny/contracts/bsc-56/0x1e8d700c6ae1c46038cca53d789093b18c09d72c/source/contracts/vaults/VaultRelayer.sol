// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;
pragma experimental ABIEncoderV2;

/*
  ___                      _   _
 | _ )_  _ _ _  _ _ _  _  | | | |
 | _ \ || | ' \| ' \ || | |_| |_|
 |___/\_,_|_||_|_||_\_, | (_) (_)
                    |__/

*
* MIT License
* ===========
*
* Copyright (c) 2020 BunnyFinance
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in all
* copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
*/

import "@pancakeswap/pancake-swap-lib/contracts/math/SafeMath.sol";
import "../library/WhitelistUpgradeable.sol";
import "../library/SafeToken.sol";

import "../interfaces/IBank.sol";
import "../interfaces/IPriceCalculator.sol";

import "../zap/ZapBSC.sol";
import "./VaultFlipToCake.sol";


contract VaultRelayer is WhitelistUpgradeable {
    using SafeMath for uint;
    using SafeBEP20 for IBEP20;

    /* ========== CONSTANTS ============= */

    bytes32 public constant DOMAIN_TYPEHASH = keccak256("EIP712Domain(string name,uint256 chainId,address verifyingContract)");
    bytes32 public constant DEPOSIT_TYPEHASH = keccak256("Deposit(address pool,uint256 bnbAmount,uint256 nonce,uint256 expiry)");
    bytes32 public constant WITHDRAW_TYPEHASH = keccak256("Withdraw(address pool,uint256 nonce,uint256 expiry)");

    address private constant WBNB = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;
    address private constant CAKE = 0x0E09FaBB73Bd3Ade0a17ECC321fD13a19e81cE82;
    address private constant SNOOPY = 0x0E09FaBB73Bd3Ade0a17ECC321fD13a19e81cE82; // TODO

    IBank private constant bank = IBank(0xCBEC8e7AB969F6Eb873Df63d04b4eAFC353574b1); // TODO
    ZapBSC private constant zapBSC = ZapBSC(0xCBEC8e7AB969F6Eb873Df63d04b4eAFC353574b1);
    IPriceCalculator private constant priceCalculator = IPriceCalculator(0xF5BF8A9249e3cc4cB684E3f23db9669323d4FB7d);

    /* ========== STATE VARIABLES ========== */

    mapping(address => uint) public nonces;

    mapping(address => uint) private _totalSupply;
    mapping(address => mapping(address => uint)) private _balances;

    /* ========== EVENTS ========== */

    event Deposited(address indexed pool, address indexed account, uint amount);
    event Withdrawn(address indexed pool, address indexed account, uint profitInETH, uint lossInETH);
    event Recovered(address token, uint amount);

    /* ========== INITIALIZER ========== */

    receive() external payable {}

    function initialize() external initializer {
        __WhitelistUpgradeable_init();

        if (IBEP20(CAKE).allowance(address(this), address(zapBSC)) == 0) {
            IBEP20(CAKE).safeApprove(address(zapBSC), uint(- 1));
        }
    }

    /* ========== VIEW FUNCTIONS ========== */

    function totalSupply(address pool) external view returns (uint) {
        return _totalSupply[pool];
    }

    function balanceOf(address pool, address account) external view returns (uint) {
        return _balances[pool][account];
    }

    function sharesOf(address pool, address account) public view returns (uint) {
        if (_totalSupply[pool] == 0) return 0;
        return _balances[pool][account].mul(1e18).div(_totalSupply[pool]);
    }

    function balanceInUSD(address pool, address account) public view returns (uint) {
        VaultFlipToCake vault = VaultFlipToCake(pool);
        address flip = vault.stakingToken();

        uint flipBalance = vault.balanceOf(address(this));
        uint cakeBalance = vault.earned(address(this));
        (, uint flipInUSD) = priceCalculator.valueOfAsset(flip, flipBalance);
        (, uint cakeInUSD) = priceCalculator.valueOfAsset(CAKE, cakeBalance);
        return flipInUSD.add(cakeInUSD).mul(1e18).div(sharesOf(pool, account));
    }

    function debtInUSD(address pool, address account) public view returns (uint) {
        (, uint valueInUSD) = priceCalculator.valueOfAsset(WBNB, bank.pendingDebtOf(pool, account));
        return valueInUSD;
    }

    function unrealizedInUSD(address pool, address account) public view returns (uint profitInUSD, uint lossInUSD) {
        uint _balanceInUSD = balanceInUSD(pool, account);
        uint _debtInUSD = debtInUSD(pool, account);
        profitInUSD = _balanceInUSD > _debtInUSD ? _balanceInUSD.sub(_debtInUSD) : 0;
        lossInUSD = _balanceInUSD < _debtInUSD ? _debtInUSD.sub(_balanceInUSD) : 0;
    }

    /* ========== RESTRICTED FUNCTIONS ========== */

    function depositBySig(address pool, uint bnbAmount, uint nonce, uint expiry, uint8 v, bytes32 r, bytes32 s) external onlyWhitelisted {
        bytes32 domainSeparator = keccak256(abi.encode(DOMAIN_TYPEHASH, keccak256(bytes("VaultRelayer")), getChainId(), address(this)));
        bytes32 structHash = keccak256(abi.encode(DEPOSIT_TYPEHASH, pool, bnbAmount, nonce, expiry));
        bytes32 digest = keccak256(abi.encodePacked("\x19\x01", domainSeparator, structHash));
        address signatory = ecrecover(digest, v, r, s);

        require(signatory != address(0), "VaultRelayer: invalid signature");
        require(nonce == nonces[signatory]++, "VaultRelayer: invalid nonce");
        require(now <= expiry, "VaultRelayer: signature expired");
        _deposit(pool, signatory, bnbAmount);
    }

    function withdrawBySig(address pool, uint nonce, uint expiry, uint8 v, bytes32 r, bytes32 s) external onlyWhitelisted {
        bytes32 domainSeparator = keccak256(abi.encode(DOMAIN_TYPEHASH, keccak256(bytes("VaultRelayer")), getChainId(), address(this)));
        bytes32 structHash = keccak256(abi.encode(WITHDRAW_TYPEHASH, pool, nonce, expiry));
        bytes32 digest = keccak256(abi.encodePacked("\x19\x01", domainSeparator, structHash));
        address signatory = ecrecover(digest, v, r, s);

        require(signatory != address(0), "VaultRelayer: invalid signature");
        require(nonce == nonces[signatory]++, "VaultRelayer: invalid nonce");
        require(now <= expiry, "VaultRelayer: signature expired");
        _withdraw(pool, signatory);
    }

    function liquidate(address pool, address account) external onlyWhitelisted {
        _withdraw(pool, account);
    }

    /* ========== PRIVATE FUNCTIONS ========== */

    function _deposit(address pool, address account, uint bnbAmount) private {
        (uint liquidity, uint utilized) = bank.getUtilizationInfo();
        bnbAmount = Math.min(bnbAmount, liquidity.sub(utilized));
        require(bnbAmount > 0, "VaultRelayer: not enough amount");

        VaultFlipToCake vault = VaultFlipToCake(pool);
        address flip = vault.stakingToken();

        uint _beforeBNB = address(this).balance;
        bank.borrow(pool, account, bnbAmount);
        bnbAmount = address(this).balance.sub(_beforeBNB);

        uint _beforeFlip = IBEP20(flip).balanceOf(address(this));
        zapBSC.zapIn{value : bnbAmount}(flip);
        uint flipAmount = IBEP20(flip).balanceOf(address(this)).sub(_beforeFlip);

        _totalSupply[pool] = _totalSupply[pool].add(flipAmount);
        _balances[pool][account] = _balances[pool][account].add(flipAmount);

        // xxx TODO @aaron check allowance FlipToCake
        if (IBEP20(flip).allowance(address(this), pool) == 0) {
            IBEP20(flip).safeApprove(pool, uint(- 1));
        }

        vault.deposit(flipAmount);
        emit Deposited(pool, account, flipAmount);
    }

    function _withdraw(address pool, address account) private {
        if (_balances[pool][account] == 0) return;

        (uint flipAmount, uint cakeAmount) = _withdrawOnPool(pool, account);
        uint bnbAmount = _zapOutToBNB(pool, flipAmount, cakeAmount);
        (uint profitInETH, uint lossInETH) = bank.repayAll{value : bnbAmount}(pool, account);

        _totalSupply[pool] = _totalSupply[pool].sub(flipAmount);
        delete _balances[pool][account];

        if (profitInETH > lossInETH) {
            bank.bridgeETH(SNOOPY, profitInETH.sub(lossInETH));
        }
        emit Withdrawn(pool, account, profitInETH, lossInETH);
    }

    function _withdrawOnPool(address pool, address account) private returns (uint flipAmount, uint cakeAmount) {
        VaultFlipToCake vault = VaultFlipToCake(pool);
        address flip = vault.stakingToken();
        uint shares = sharesOf(pool, account);

        uint _beforeFlip = IBEP20(flip).balanceOf(address(this));
        uint _beforeCake = IBEP20(CAKE).balanceOf(address(this));

        vault.withdrawOnRelayer(shares);
        flipAmount = IBEP20(flip).balanceOf(address(this)).sub(_beforeFlip);
        cakeAmount = IBEP20(CAKE).balanceOf(address(this)).sub(_beforeCake);
    }

    function _zapOutToBNB(address pool, uint flipAmount, uint cakeAmount) private returns (uint) {
        uint _beforeBNB = address(this).balance;

        address flip = VaultFlipToCake(pool).stakingToken();
        IPancakePair pair = IPancakePair(flip);
        address pairToken = pair.token0() == WBNB ? pair.token1() : pair.token0();

        uint _beforePairTokenAmount = IBEP20(pairToken).balanceOf(address(this));
        _approveIfNeeded(flip);
        if (flipAmount > 0) zapBSC.zapOut(flip, flipAmount);
        if (cakeAmount > 0) zapBSC.zapOut(CAKE, cakeAmount);


        _approveIfNeeded(pairToken);
        // xxx TODO @aaron check before/after diff
        uint pairTokenAmount = IBEP20(pairToken).balanceOf(address(this)).sub(_beforePairTokenAmount);
        if (pairTokenAmount > 0) zapBSC.zapOut(pairToken, pairTokenAmount);

        return address(this).balance.sub(_beforeBNB);
    }

    function _approveIfNeeded(address token) private {
        if (IBEP20(token).allowance(address(this), address(zapBSC)) == 0) {
            IBEP20(token).safeApprove(address(zapBSC), uint(- 1));
        }
    }

    /* ========== INTERNAL FUNCTIONS ========== */

    function getChainId() internal pure returns (uint) {
        uint256 chainId;
        assembly { chainId := chainid() }
        return chainId;
    }

    /* ========== SALVAGE PURPOSE ONLY ========== */

    function recoverToken(address tokenAddress, uint tokenAmount) external onlyOwner {
        require(
            tokenAddress != address(0) &&
            tokenAddress != CAKE &&
            keccak256(abi.encodePacked(IPancakePair(tokenAddress).symbol())) == keccak256("Cake-LP"),
            "VaultRelayer: cannot recover token");

        IBEP20(tokenAddress).safeTransfer(owner(), tokenAmount);
        emit Recovered(tokenAddress, tokenAmount);
    }

    /// @dev TODO remove test functions
    /* ========== TEST FUNCTIONS ========== */

    function deposit(address pool, address account, uint bnbAmount) external onlyWhitelisted {
        _deposit(pool, account, bnbAmount);
    }

    function withdraw(address pool, address account) external onlyWhitelisted {
        _withdraw(pool, account);
    }
}
