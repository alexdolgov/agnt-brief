// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;
import "contracts/pools/Pool.sol";
import "openzeppelin/access/Ownable.sol";
import "openzeppelin/utils/math/Math.sol";
import "algebra-core/interfaces/IAlgebraPool.sol";
import "algebra-core/interfaces/vault/IAlgebraVaultFactory.sol";
import "algebra-farming/base/IncentiveKey.sol";
import "algebra-farming/interfaces/IAlgebraEternalVirtualPool.sol";
import "algebra-farming/interfaces/IAlgebraEternalFarming.sol";
import "algebra-farming/libraries/IncentiveId.sol";
import "contracts/lib/RPow.sol";
import "contracts/lib/Token.sol";

contract AlgebraBladeGauge is Pool, IBribe, IGauge {
    using TokenLib for Token;
    using SafeCast for uint256;
    using SafeCast for int256;
    IAlgebraPool public immutable pool;
    address public immutable bladeToken;
    Token public immutable token0;
    Token public immutable token1;
    uint256 public immutable nonce;
    uint256 lastBribe;

    constructor(
        IVault vault,
        IAlgebraPool pool_,
        uint256 nonce_,
        address bladeToken_
    ) Pool(vault, address(this), msg.sender) {
        pool = pool_;
        token0 = toToken(IERC20(pool.token0()));
        token1 = toToken(IERC20(pool.token1()));
        lastBribe = block.timestamp;
        nonce = nonce_;
        bladeToken = bladeToken_;
        vault.attachBribe(this, this);
    }

    function incentiveKey() external view returns (IncentiveKey memory key) {
        key.pool = pool;
        key.nonce = nonce;
        key.rewardToken = IERC20Minimal(bladeToken);
    }

    function velocore__emission(uint256) external {}

    function velocore__gauge(
        address user,
        Token[] calldata tokens,
        int128[] memory amounts,
        bytes calldata
    ) external returns (int128[] memory, int128[] memory) {
        require(user == factory_);
        amounts[0] = -(int128(uint128(_getGaugeBalance(tokens[0]))));
        return (new int128[](0), amounts);
    }

    function velocore__bribe(
        IGauge gauge,
        uint256 elapsed
    )
        external
        onlyVault
        returns (
            Token[] memory bribeTokens,
            int128[] memory deltaGauge,
            int128[] memory deltaPool,
            int128[] memory deltaExternal
        )
    {
        require(address(gauge) == address(this));
        uint256 decay = 2 ** 32 - rpow(4294955811, elapsed, 2 ** 32);
        uint256 amount0 = (token0.balanceOf(address(this)) * decay) / 2 ** 32;
        uint256 amount1 = (token1.balanceOf(address(this)) * decay) / 2 ** 32;
        bribeTokens = new Token[](2);
        bribeTokens[0] = token0;
        bribeTokens[1] = token1;
        deltaGauge = new int128[](2);
        deltaPool = new int128[](2);
        deltaExternal = new int128[](2);
        deltaExternal[0] = amount0.toInt256().toInt128();
        deltaExternal[1] = amount1.toInt256().toInt128();
        lastBribe = block.timestamp;
    }

    function bribeTokens(IGauge gauge) external view returns (Token[] memory) {
        Token[] memory r = new Token[](2);
        r[0] = token0;
        r[1] = token1;
        return r;
    }

    function naturalBribes() external view returns (Token[] memory) {
        Token[] memory r = new Token[](2);
        r[0] = token0;
        r[1] = token1;
        return r;
    }

    function bribeRates(IGauge gauge) external view returns (uint256[] memory) {
        uint256 decay1 = rpow(4294955811, block.timestamp - lastBribe, 2 ** 32);
        uint256 decay2 = (decay1 * (2 ** 32 - 4294955811)) / 2 ** 32;
        uint256 amount0 = (token0.balanceOf(address(this)) * decay2) / 2 ** 32;
        uint256 amount1 = (token1.balanceOf(address(this)) * decay2) / 2 ** 32;
        uint256[] memory r = new uint256[](2);
        r[0] = amount0;
        r[1] = amount1;
    }

    function stakeableTokens() external view returns (Token[] memory) {
        Token[] memory r = new Token[](1);
        r[0] = toToken(IERC20(address(pool)));
        return r;
    }

    function stakedTokens(address) external view returns (uint256[] memory) {
        return new uint256[](1);
    }

    function stakedTokens() external view returns (uint256[] memory) {
        return new uint256[](1);
    }

    function emissionShare(address) external view returns (uint256) {
        return 0;
    }

}

contract AlgebraBladeIncentiveMaker is IAlgebraVaultFactory {
    using TokenLib for Token;
    IAlgebraEternalFarming immutable farming;
    IVault immutable vault;
    Token immutable bladeToken;
    mapping(IAlgebraPool => AlgebraBladeGauge) gauges;
    mapping(address => bool) public isAlgebraPool;
    AlgebraBladeGauge[] public gaugeList;
    address immutable factory;

    constructor(
        IVault vault_,
        address factory_,
        IAlgebraEternalFarming farming_,
        Token bladeToken_
    ) {
        bladeToken = bladeToken_;
        farming = farming_;
        vault = vault_;
        IERC20(bladeToken.addr()).approve(address(farming), type(uint256).max);
        factory = factory_;
    }

    function getGauges(
        uint256 begin,
        uint256 maxLength
    ) external view returns (AlgebraBladeGauge[] memory pools) {
        uint256 len = gaugeList.length <= begin
            ? 0
            : Math.min(gaugeList.length - begin, maxLength);
        pools = new AlgebraBladeGauge[](len);
        unchecked {
            for (uint256 i = begin; i < begin + len; i++) {
                pools[i - begin] = gaugeList[i];
            }
        }
    }
    function gaugesLength() external view returns (uint256) {return gaugeList.length;}

    function distribute(uint256 begin, uint256 len) external {
        for (
            uint256 i = begin;
            i < Math.min(begin + len, gaugeList.length);
            i++
        ) {
            AlgebraBladeGauge gauge = gaugeList[i];
            vault.deposit(address(gauge), 0);

            IncentiveKey memory key = gauge.incentiveKey();

            farming.setRates(key, 0, 0);
            farming.addRewards(
                key,
                uint128(bladeToken.balanceOf(address(this))),
                0
            );
            (, , address virtualPool, , , ) = farming.incentives(
                IncentiveId.compute(key)
            );
            (uint256 reserve, ) = IAlgebraEternalVirtualPool(virtualPool)
                .rewardReserves();
            farming.setRates(key, uint128((reserve * 9) / (10 hours)), 0);
        }
    }

    function getVaultForPool(address pool) external view returns (address) {
        return address(gauges[IAlgebraPool(pool)]);
    }

    function createVaultForPool(address pool_) external returns (address) {
        require (msg.sender == address(factory));
        IAlgebraPool pool = IAlgebraPool(pool_);
        require(address(gauges[pool]) == address(0), "already deployed");

        uint256 nonce = farming.numOfIncentives();
        AlgebraBladeGauge gauge = new AlgebraBladeGauge(
            vault,
            pool,
            nonce,
            bladeToken.addr()
        );
        isAlgebraPool[pool_] = true;
        gauges[pool] = gauge;
        gaugeList.push(gauge);
        farming.createEternalFarming(
            gauge.incentiveKey(),
            IAlgebraEternalFarming.IncentiveParams({
                reward: 1,
                bonusReward: 0,
                rewardRate: 0,
                bonusRewardRate: 0,
                minimalPositionWidth: 1
            }),
            pool.plugin()
        );
        return address(gauge);
    }
}
