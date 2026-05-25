pragma solidity =0.5.16;

import "@openzeppelin/contracts/ownership/Ownable.sol";
import "./interfaces/IBaseV1Pair.sol";
import "./SoliSnekVaultToken.sol";
import "./interfaces/ISoliSnekVaultTokenFactory.sol";

contract SoliSnekVaultTokenFactory is Ownable, ISoliSnekVaultTokenFactory {
    address public optiSwap;
    address public router;
    address public voter;
    address public pairFactory;
    address public rewardsToken;
    address public reinvestFeeTo;

    mapping(address => address) public getVaultToken;
    address[] public allVaultTokens;

    constructor(
        address _optiSwap,
        address _router,
        address _voter,
        address _pairFactory,
        address _rewardsToken,
        address _reinvestFeeTo
    ) public {
        optiSwap = _optiSwap;
        router = _router;
        voter = _voter;
        pairFactory = _pairFactory;
        rewardsToken = _rewardsToken;
        reinvestFeeTo = _reinvestFeeTo;
    }

    function allVaultTokensLength() external view returns (uint256) {
        return allVaultTokens.length;
    }

    function createVaultToken(address _underlying)
        external
        returns (address vaultToken)
    {
        require(
            getVaultToken[_underlying] == address(0),
            "VaultTokenFactory: POOL_EXISTS"
        );
        require(!IBaseV1Pair(_underlying).stable(), "VaultTokenFactory: IS_STABLE");
        bytes memory bytecode = type(SoliSnekVaultToken).creationCode;
        assembly {
            vaultToken := create2(0, add(bytecode, 32), mload(bytecode), _underlying)
        }
        SoliSnekVaultToken(vaultToken)._initialize(
            _underlying,
            optiSwap,
            router,
            voter,
            pairFactory,
            rewardsToken,
            reinvestFeeTo
        );
        getVaultToken[_underlying] = vaultToken;
        allVaultTokens.push(vaultToken);
        emit VaultTokenCreated(_underlying, vaultToken, allVaultTokens.length);
    }
}
