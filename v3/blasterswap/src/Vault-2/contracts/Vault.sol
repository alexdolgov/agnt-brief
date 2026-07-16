// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {Initializable} from "@openzeppelin/contracts/proxy/utils/Initializable.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

import {IERC20Rebasing} from "./interfaces/IERC20Rebasing.sol";
import {IBlastPoints} from "./interfaces/IBlastPoints.sol";

contract Vault is ERC20, Initializable {
    using SafeERC20 for IERC20;

    event Entered(
        address indexed user,
        uint256 amount,
        uint shares,
        uint totalShares
    );

    event Left(
        address indexed user,
        uint256 amountm,
        uint shares,
        uint totalShares
    );

    IERC20 public token;

    string private vaultName;
    string private vaultSymbol;

    IERC20Rebasing public constant USDB =
        IERC20Rebasing(0x4300000000000000000000000000000000000003);
    IERC20Rebasing public constant WETH =
        IERC20Rebasing(0x4300000000000000000000000000000000000004);
    IBlastPoints private constant BLAST_POINTS =
        IBlastPoints(0x2536FE9ab3F511540F2f9e2eC2A805005C3Dd800);

    address public constant blast = 0x4300000000000000000000000000000000000002;
    address public constant blastPoints =
        0x2536FE9ab3F511540F2f9e2eC2A805005C3Dd800;
    address public constant blastPointsOperator =
        0xd94ff4fe12Dd3EA08BE632A5393771CF87808977;

    constructor() ERC20("", "") {}

    function initialize(IERC20Metadata _token) public initializer {
        string memory _name = _token.name();
        string memory _symbol = _token.symbol();

        token = IERC20(_token);

        vaultName = string(abi.encodePacked("x", _name));
        vaultSymbol = string(abi.encodePacked("x", _symbol));

        if (address(token) == address(WETH)) {
            WETH.configure(IERC20Rebasing.YieldMode.CLAIMABLE);
        }
        if (address(token) == address(USDB)) {
            USDB.configure(IERC20Rebasing.YieldMode.CLAIMABLE);
        }

        BLAST_POINTS.configurePointsOperator(blastPointsOperator);
    }

    /**
     * @dev enter allows to enter vault with token
     */
    function enter(uint256 _amount) public {
        _claimYield();

        uint256 totalTokens = token.balanceOf(address(this));
        uint256 totalShares = totalSupply();

        uint what;
        if (totalShares == 0 || totalTokens == 0) {
            _mint(address(0xdead), 1000);
            _mint(msg.sender, _amount - 1000);
        } else {
            what = (_amount * totalShares) / totalTokens;
            require(what > 0, "shares to mint is zero");
            _mint(msg.sender, what);
        }

        token.safeTransferFrom(msg.sender, address(this), _amount);

        emit Entered(msg.sender, _amount, what, totalSupply());
    }

    /**
     * @dev allows to leave vault realeasing token
     */
    function leave(uint256 _share) public {
        _claimYield();

        uint256 totalShares = totalSupply();

        uint256 what = (_share * token.balanceOf(address(this))) / totalShares;
        _burn(msg.sender, _share);

        token.safeTransfer(msg.sender, what);

        emit Left(msg.sender, what, _share, totalSupply());
    }

    /**
     * @dev caculates how many shares a user will receive when depositing tokens
     * @param  _amount - amount of tokens to deposit
     */
    function calculateShares(uint256 _amount) public view returns (uint256) {
        uint256 totalTokens = token.balanceOf(address(this));
        uint256 totalShares = totalSupply();

        if (totalShares == 0 || totalTokens == 0) {
            return (_amount - 1000);
        }

        return (_amount * totalShares) / totalTokens;
    }

    /**
     * @dev caculates how many tokens a user will receive when burning shares
     * @param  _share - amount of shares to burn
     */
    function calculateTokens(uint256 _share) public view returns (uint256) {
        if (_share == 0) {
            return
                (balanceOf(msg.sender) * token.balanceOf(address(this))) /
                totalSupply();
        }

        return (_share * token.balanceOf(address(this))) / totalSupply();
    }

    /**
     * @dev returns name
     */
    function name() public view override returns (string memory) {
        return vaultName;
    }

    /**
     * @dev returns symbol
     */
    function symbol() public view override returns (string memory) {
        return vaultSymbol;
    }

    function _claimYield() internal {
        if (address(token) == address(WETH)) {
            uint256 claimableAmount = WETH.getClaimableAmount(address(this));
            WETH.claim(address(this), claimableAmount);
        }

        if (address(token) == address(USDB)) {
            uint256 claimableAmount = USDB.getClaimableAmount(address(this));
            USDB.claim(address(this), claimableAmount);
        }
    }
}

// BlasterToken : 0x8612a4cF4C264a3C8aBd49AC08bFE004D4b90C02
// BlasterToken : 0x069aCD12856Adc0cb4EBAa1763516fBF69966E53
// Vault : 0x820B19e1B88c386b613Ee4d9c8fdE9332F4C8CD9
// VaultFactory : 0xe1Ebf492F50CbB2230B0B3d49d4D30e6d395Be9B
// erc20MockVault 0x8fFcC2a3d2eD5ac2c3cD442aAACbf9E3eDD0FB9c
