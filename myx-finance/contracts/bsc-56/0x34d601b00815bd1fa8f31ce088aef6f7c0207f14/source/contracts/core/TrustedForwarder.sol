// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.19;

import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "../@openzeppelin/MinimalForwarderUpgradeable.sol";
import "../interfaces/IRouter.sol";
import "../interfaces/ITrustedForwarder.sol";
import "../libraries/Upgradeable.sol";

contract TrustedForwarder is ITrustedForwarder, MinimalForwarderUpgradeable, Upgradeable, ReentrancyGuardUpgradeable {
    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.AddressSet;

    // account => relayers
    mapping(address => EnumerableSet.AddressSet) private userRelayers;

    // relayer => account
    mapping(address => address) public originAccount;

    mapping(address => bool) public publicRelayer;

    uint256 public maxPledgeFee;

    uint256 public override pledgeFee;

    address public override pledgeAddress;

    address public router;

    function initialize(
        IAddressesProvider addressProvider,
        address _router,
        address _pledgeAddress,
        uint256 _pledgeFee,
        uint256 _maxPledgeFee
    ) public initializer {
        __MinimalForwarder_init();

        ADDRESS_PROVIDER = addressProvider;
        router = _router;
        pledgeAddress = _pledgeAddress;
        pledgeFee = _pledgeFee;
        maxPledgeFee = Math.max(_pledgeFee, _maxPledgeFee);
    }

    modifier onlyRouter() {
        require(msg.sender == router, "onlyRouter");
        _;
    }

    receive() external payable {}

    function updateRouter(address _router) external onlyPoolAdmin {
        address oldAddress = _router;
        router = _router;
        emit UpdateRouter(msg.sender, oldAddress, _router);
    }

    function updatePledgeFee(uint256 _pledgeFee) external onlyPoolAdmin {
        require(_pledgeFee <= maxPledgeFee, "exceeds maximum pledgeFee");
        uint256 old = pledgeFee;
        pledgeFee = _pledgeFee;
        emit UpdatePledgeFee(msg.sender, old, _pledgeFee);
    }

    function updateMaxPledgeFee(uint256 _maxPledgeFee) external onlyAdmin {
        uint256 old = maxPledgeFee;
        maxPledgeFee = _maxPledgeFee;
        emit UpdateMaxPledgeFee(msg.sender, old, _maxPledgeFee);
    }

    function approve(address account, address relayer, bool enable) external onlyRouter {
        if (enable) {
            userRelayers[account].add(relayer);
            originAccount[relayer] = account;
        } else {
            userRelayers[account].remove(relayer);
            delete originAccount[relayer];
        }
        emit SetUserRelayer(account, relayer, enable);
    }

    function setPublicRelayer(address relayer, bool enable) external onlyPoolAdmin {
        publicRelayer[relayer] = enable;
        emit SetPublicRelayer(msg.sender, relayer, enable);
    }

    function getRelayers(address account) public view returns (address[] memory relayers) {
        return userRelayers[account].values();
    }

    function execute(
        address from,
        address to,
        uint256 value,
        uint256 gas,
        uint256 nonce,
        bytes calldata data,
        bytes calldata signature
    ) public payable override nonReentrant returns (bool success, bytes memory returnData) {
        require(publicRelayer[msg.sender], "invalid relayer");
        require(address(router) == to, "only router");
        require(_recoverForwardRequestSigner(from, to, value, gas, nonce, data, signature) == from, "invalid from");

        uint256 balanceBefore = IERC20(pledgeAddress).balanceOf(address(this));

        (success, returnData) = MinimalForwarderUpgradeable.execute(from, to, value, gas, nonce, data, signature);
        require(success, string(returnData));

        uint256 balance = IERC20(pledgeAddress).balanceOf(address(this));

        require(balanceBefore + pledgeFee <= balance, "pledge fee required");
        IERC20(pledgeAddress).safeTransfer(msg.sender, balance - balanceBefore);
    }

    function getUserForwarderData(address user) public view returns (address gasToken, uint256 gasFee, uint256 nonce) {
        return (pledgeAddress, pledgeFee, getNonce(user));
    }

    function checkUserRelayer(CheckUserRelayerParam[] memory params) public view returns (CheckUserRelayerResp[] memory) {
        CheckUserRelayerResp[] memory resp = new CheckUserRelayerResp[](params.length);
        for (uint256 i = 0; i < params.length; i++) {
            resp[i] = ITrustedForwarder.CheckUserRelayerResp({
                bundled: params[i].origin == this.originAccount(params[i].relayer),
                allowance: IERC20(pledgeAddress).allowance(params[i].origin, router)
            });
        }
        return resp;
    }

}
