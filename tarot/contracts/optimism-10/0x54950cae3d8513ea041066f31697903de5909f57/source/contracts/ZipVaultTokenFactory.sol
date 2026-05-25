pragma solidity =0.5.16;

import "@openzeppelin/contracts/ownership/Ownable.sol";
import "./ZipVaultToken.sol";
import "./interfaces/IZipRewards.sol";
import "./interfaces/IZipVaultTokenFactory.sol";
import "./interfaces/IUniswapV2Pair.sol";
import "./interfaces/IUniswapV2Router01.sol";

contract ZipVaultTokenFactory is Ownable, IZipVaultTokenFactory {
    address public optiSwap;
    address public rewarderHelper;
    address public router;
    address public masterChef;
    address public rewardsToken;
    uint256 public swapFeeFactor;

    mapping(uint256 => address) public getVaultToken;
    address[] public allVaultTokens;

    event VaultTokenCreated(
        uint256 indexed pid,
        address vaultToken,
        uint256 vaultTokenIndex
    );

    constructor(
        address _optiSwap,
        address _rewarderHelper,
        address _router,
        address _masterChef,
        address _rewardsToken,
        uint256 _swapFeeFactor
    ) public {
        require(
            _swapFeeFactor >= 900 && _swapFeeFactor <= 1000,
            "VaultTokenFactory: INVALID_FEE_FACTOR"
        );
        optiSwap = _optiSwap;
        rewarderHelper = _rewarderHelper;
        router = _router;
        masterChef = _masterChef;
        rewardsToken = _rewardsToken;
        swapFeeFactor = _swapFeeFactor;
    }

    function allVaultTokensLength() external view returns (uint256) {
        return allVaultTokens.length;
    }

    function createVaultToken(uint256 pid)
        external
        returns (address vaultToken)
    {
        require(
            getVaultToken[pid] == address(0),
            "VaultTokenFactory: PID_EXISTS"
        );
        bytes memory bytecode = type(ZipVaultToken).creationCode;
        assembly {
            vaultToken := create2(0, add(bytecode, 32), mload(bytecode), pid)
        }
        ZipVaultToken(vaultToken)._initialize(
            optiSwap,
            rewarderHelper,
            IUniswapV2Router01(router),
            IZipRewards(masterChef),
            rewardsToken,
            swapFeeFactor,
            pid
        );
        getVaultToken[pid] = vaultToken;
        allVaultTokens.push(vaultToken);
        emit VaultTokenCreated(pid, vaultToken, allVaultTokens.length);
    }
}
