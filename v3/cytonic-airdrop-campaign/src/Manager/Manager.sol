// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {ErrorLibUpgradeable} from "./utils/ErrorLib.sol";
import {ERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {IRouter} from "./interfaces/IRouter.sol";
import {IMToken} from "./interfaces/IMToken.sol";
import {IManager} from "./interfaces/IManager.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {IMessageReceiver} from "./interfaces/IMessageReceiver.sol";

contract Manager is
    IManager,
    IMessageReceiver,
    Initializable,
    PausableUpgradeable,
    ReentrancyGuardUpgradeable,
    AccessControlUpgradeable,
    ErrorLibUpgradeable
{
    uint256 private constant TOTAL_ROUTE_RATIO = 10_000;

    address[] public mTokens;

    mapping(address mToken => ChannelSetting channelSetting)
        public channelSettings;

    mapping(address mToken => mapping(uint chainId => address[] tokens))
        public acceptTokens;

    mapping(address mToken => mapping(uint chainId => mapping(address acceptToken => TokenInfoDetail tokenInfoDetail)))
        public acceptTokenInfos;

    mapping(address mToken => mapping(uint chainId => mapping(address acceptToken => TokenReceiverInfo[] tokenReceiverInfos)))
        public acceptTokenReceivers;

    bool public stakePaused;
    bool public withdrawPaused;

    IRouter public router;

    bytes32 public constant REMOTE_CHAIN_STAKE_ROLE =
        keccak256("REMOTE_CHAIN_STAKE_ROLE");

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address router_) public initializer {
        __Pausable_init();
        __ReentrancyGuard_init();
        __ErrorLibUpgradeable__init();

        // grant DEFAULT_ADMIN_ROLE to msg.sender
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        pause();

        stakePaused = true;
        withdrawPaused = true;

        _validate(router_ != address(0), 1);
        router = IRouter(router_);
    }

    // when deposit not paused
    modifier whenNotStakePaused() {
        _validate(!stakePaused, 2);
        _;
    }

    // when withdraw not paused
    modifier whenNotWithdrawPaused() {
        _validate(!withdrawPaused, 3);
        _;
    }

    function pause() public onlyRole(DEFAULT_ADMIN_ROLE) {
        _pause();
    }

    function unpause() public onlyRole(DEFAULT_ADMIN_ROLE) {
        _unpause();
    }

    // set stake pause status
    function setStakePaused(bool _status) public onlyRole(DEFAULT_ADMIN_ROLE) {
        // require different status
        _validate(stakePaused != _status, 19);
        stakePaused = _status;
        emit StakePaused(_status);
    }

    // set withdraw pause status
    function setWithdrawPaused(
        bool _status
    ) public onlyRole(DEFAULT_ADMIN_ROLE) {
        // require different status
        _validate(withdrawPaused != _status, 19);
        withdrawPaused = _status;
        emit WithdrawPaused(_status);
    }

    // view method, get all mTokens
    function getAllMTokens() public view returns (address[] memory) {
        //  new array
        address[] memory result = new address[](mTokens.length);

        // loop
        for (uint i = 0; i < mTokens.length; ++i) {
            result[i] = mTokens[i];
        }
        return result;
    }

    // register channel
    function registerChannel(
        RegisterChannelParams memory params
    ) public onlyRole(DEFAULT_ADMIN_ROLE) {
        _validate(!channelSettings[params.mToken].registered, 4);

        _validate(params.mToken != address(0), 5);

        uint8 mTokenDecimals = ERC20Upgradeable(params.mToken).decimals();

        // withdrawQueue can be zero address if not ready for withdraw currently
        channelSettings[params.mToken] = ChannelSetting({
            mToken: params.mToken,
            mTokenDecimals: mTokenDecimals,
            withdrawQueue: params.withdrawQueue,
            withdrawPaused: true,
            stakePaused: true,
            registered: true,
            index: mTokens.length
        });

        // push to mTokens
        mTokens.push(params.mToken);

        if (params.acceptTokens.length > 0) {
            _addAcceptTokens(params.mToken, params.acceptTokens);
        }

        emit RegisterChannel(
            params.mToken,
            params.acceptTokens,
            params.withdrawQueue
        );
    }

    // function add accept tokens
    function addAcceptTokens(
        address _mToken,
        AcceptTokenInfo[] memory _acceptTokens
    ) public onlyRole(DEFAULT_ADMIN_ROLE) {
        _addAcceptTokens(_mToken, _acceptTokens);
    }

    // add accept tokens
    function _addAcceptTokens(
        address _mToken,
        AcceptTokenInfo[] memory _acceptTokens
    ) internal {
        _validate(channelSettings[_mToken].registered, 12);

        // acceptToken length >0
        _validate(_acceptTokens.length > 0, 6);

        uint localChainId = getChainId();

        // get mToken decimals
        uint8 mTokenDecimals = channelSettings[_mToken].mTokenDecimals;

        // update accept token
        for (uint i = 0; i < _acceptTokens.length; ++i) {
            AcceptTokenInfo memory acceptToken = _acceptTokens[i];

            // check acceptToken not registered
            _validate(
                !acceptTokenInfos[_mToken][acceptToken.chainId][
                    acceptToken.addr
                ].registered,
                18
            );

            // if is token on current chain, check decimal
            if (acceptToken.chainId == localChainId) {
                _validate(
                    acceptToken.decimals ==
                        (
                            acceptToken.addr == address(0)
                                ? 18
                                : ERC20Upgradeable(acceptToken.addr).decimals()
                        ),
                    7
                );
            }

            // validate decimal smaller than mToken's decimal
            _validate(acceptToken.decimals <= mTokenDecimals, 8);

            acceptTokenInfos[_mToken][acceptToken.chainId][
                acceptToken.addr
            ] = TokenInfoDetail({
                decimals: acceptToken.decimals,
                withdrawPaused: true,
                stakePaused: true,
                minDepositAmount: acceptToken.minDepositAmount,
                registered: true,
                index: acceptTokens[_mToken][acceptToken.chainId].length
            });

            acceptTokens[_mToken][acceptToken.chainId].push(acceptToken.addr);

            if (acceptToken.chainId == localChainId) {
                // add token receivers
                uint sumRatio;
                // loop tokenReceivers and tokenReceiverRatios
                for (
                    uint index_tokenReceiver = 0;
                    index_tokenReceiver < acceptToken.tokenReceiverInfos.length;
                    ++index_tokenReceiver
                ) {
                    address tokenReceiver = acceptToken
                        .tokenReceiverInfos[index_tokenReceiver]
                        .addr;
                    uint256 tokenReceiverRatio = acceptToken
                        .tokenReceiverInfos[index_tokenReceiver]
                        .ratio;

                    // validate tokenReceiver
                    _validate(
                        tokenReceiver != address(0) && tokenReceiverRatio > 0,
                        9
                    );

                    acceptTokenReceivers[_mToken][acceptToken.chainId][
                        acceptToken.addr
                    ].push(
                            TokenReceiverInfo({
                                addr: tokenReceiver,
                                ratio: tokenReceiverRatio
                            })
                        );

                    // accumulate ratio
                    sumRatio += tokenReceiverRatio;
                }

                // require sum of tokenReceiverRatios to be 100
                _validate(sumRatio == TOTAL_ROUTE_RATIO, 10);
            } else {
                // require receiverInfos length to be 0
                _validate(acceptToken.tokenReceiverInfos.length == 0, 21);
            }
        }

        emit AddAcceptTokens(_mToken, _acceptTokens);
    }

    // function receive token
    function _receiveToken(
        address stakeToken,
        uint stakeTokenAmount,
        uint remainMsgValue
    ) internal returns (uint) {
        if (stakeToken == address(0)) {
            _validate(remainMsgValue >= stakeTokenAmount, 11);
            return remainMsgValue - stakeTokenAmount;
        } else {
            // transfer token to this
            router.pluginTransferERC20(
                stakeToken,
                msg.sender,
                address(this),
                stakeTokenAmount
            );
            return remainMsgValue;
        }
    }

    // distribute token
    function _distributeToken(
        address mToken,
        uint chainid,
        address stakeToken,
        uint stakeTokenAmount
    ) internal {
        for (
            uint i = 0;
            i < acceptTokenReceivers[mToken][chainid][stakeToken].length;
            ++i
        ) {
            address receiver = acceptTokenReceivers[mToken][chainid][
                stakeToken
            ][i].addr;
            uint256 ratio = acceptTokenReceivers[mToken][chainid][stakeToken][i]
                .ratio;

            uint tokenAmount = (stakeTokenAmount * ratio) / TOTAL_ROUTE_RATIO;

            // if ether
            if (stakeToken == address(0)) {
                Address.sendValue(payable(receiver), tokenAmount);
            } else {
                // transfer token
                ERC20Upgradeable(stakeToken).transfer(receiver, tokenAmount);
            }
        }
    }

    // stake
    function _stake(
        address mToken,
        uint chainId,
        address stakeToken,
        uint256 stakeTokenAmount,
        address shareReceiver,
        address refundReceiver,
        bytes32 guid,
        uint8 remoteChainDecimals
    ) internal nonReentrant {
        uint remainMsgValue = msg.value;

        bool isLocalChainStake = (getChainId() == chainId);

        // validate mToken
        _validate(channelSettings[mToken].registered, 12);

        // validate token registered
        _validate(acceptTokenInfos[mToken][chainId][stakeToken].registered, 13);

        // validate min deposit amount
        _validate(
            stakeTokenAmount >=
                acceptTokenInfos[mToken][chainId][stakeToken].minDepositAmount,
            14
        );

        _validate(
            !acceptTokenInfos[mToken][chainId][stakeToken].stakePaused,
            15
        );

        if (isLocalChainStake) {
            // receive token
            remainMsgValue = _receiveToken(
                stakeToken,
                stakeTokenAmount,
                remainMsgValue
            );

            _distributeToken({
                mToken: mToken,
                chainid: chainId,
                stakeToken: stakeToken,
                stakeTokenAmount: stakeTokenAmount
            });
        }

        if (!isLocalChainStake) {
            _validate(
                remoteChainDecimals ==
                    acceptTokenInfos[mToken][chainId][stakeToken].decimals,
                22
            );
        }

        // check shareReceiver not zero address
        _validate(shareReceiver != address(0), 16);

        uint equivalentAssetAmount = convertDecimal({
            amount: stakeTokenAmount,
            fromDecimal: acceptTokenInfos[mToken][chainId][stakeToken].decimals,
            toDecimal: channelSettings[mToken].mTokenDecimals
        });

        // mint mToken
        uint shareAmount = IMToken(mToken).mintWithAssetAmount(
            equivalentAssetAmount,
            shareReceiver
        );

        // refund
        if (remainMsgValue > 0) {
            // require refundReceiver not zero address
            _validate(refundReceiver != address(0), 20);
            Address.sendValue(payable(refundReceiver), remainMsgValue);
            emit Refund(refundReceiver, remainMsgValue);
        }

        // emit stake event
        emit Stake(
            msg.sender,
            shareReceiver,
            chainId,
            mToken,
            stakeToken,
            stakeTokenAmount,
            shareAmount,
            remainMsgValue,
            refundReceiver,
            guid
        );
    }

    function convertDecimal(
        uint amount,
        uint8 fromDecimal,
        uint8 toDecimal
    ) public view returns (uint) {
        // require fromDecimal smaller than toDecimal
        _validate(fromDecimal <= toDecimal, 17);

        return amount * (10 ** (toDecimal - fromDecimal));
    }

    // stake
    function stake(
        address mToken,
        address stakeToken,
        uint256 stakeTokenAmount,
        address shareReceiver,
        address refundReceiver
    ) public payable whenNotPaused whenNotStakePaused {
        _stake({
            mToken: mToken,
            chainId: getChainId(),
            stakeToken: stakeToken,
            stakeTokenAmount: stakeTokenAmount,
            shareReceiver: shareReceiver,
            refundReceiver: refundReceiver,
            guid: bytes32(0),
            remoteChainDecimals: 0
        });
    }

    // remote stake
    function _remoteChainStake(
        address mToken,
        uint chainId,
        address stakeToken,
        uint256 stakeTokenAmount,
        address shareReceiver,
        bytes32 guid,
        uint8 remoteChainDecimals
    ) internal {
        _stake({
            mToken: mToken,
            chainId: chainId,
            stakeToken: stakeToken,
            stakeTokenAmount: stakeTokenAmount,
            shareReceiver: shareReceiver,
            refundReceiver: address(0),
            guid: guid,
            remoteChainDecimals: remoteChainDecimals
        });
    }

    // rescue token
    function rescueToken(
        address token,
        uint256 amount,
        address receiver
    ) public onlyRole(DEFAULT_ADMIN_ROLE) {
        // if ether
        if (token == address(0)) {
            Address.sendValue(payable(receiver), amount);
        } else {
            ERC20Upgradeable(token).transfer(receiver, amount);
        }
    }

    // get chainId
    function getChainId() public view returns (uint) {
        uint256 chainId;
        assembly {
            chainId := chainid()
        }
        return chainId;
    }

    // get accept tokens
    function getAllAcceptTokens(
        uint chainId
    ) public view returns (TokenInfoDetailWithAddr[] memory) {
        // get length
        uint mTokenLength = mTokens.length;

        // loop to get accept token length
        uint allLength = 0;
        for (uint i = 0; i < mTokenLength; ++i) {
            allLength += acceptTokens[mTokens[i]][chainId].length;
        }

        // new array
        TokenInfoDetailWithAddr[] memory result = new TokenInfoDetailWithAddr[](
            allLength
        );

        bool isLocalChain = getChainId() == chainId;

        uint counter;
        // loop
        for (uint i = 0; i < mTokenLength; ++i) {
            address mToken = mTokens[i];

            // loop accpet tokens
            for (uint j = 0; j < acceptTokens[mToken][chainId].length; ++j) {
                address token = acceptTokens[mToken][chainId][j];
                TokenInfoDetail memory tokenInfoDetail = acceptTokenInfos[
                    mToken
                ][chainId][token];

                bool isNativeToken = token == address(0);

                result[counter] = TokenInfoDetailWithAddr({
                    mToken: mToken,
                    stakeToken: token,
                    decimals: tokenInfoDetail.decimals,
                    stakePaused: tokenInfoDetail.stakePaused,
                    withdrawPaused: tokenInfoDetail.withdrawPaused,
                    minDepositAmount: tokenInfoDetail.minDepositAmount,
                    index: tokenInfoDetail.index,
                    name: isLocalChain
                        ? (isNativeToken ? "" : ERC20Upgradeable(token).name())
                        : "",
                    symbol: isLocalChain
                        ? (
                            isNativeToken
                                ? ""
                                : ERC20Upgradeable(token).symbol()
                        )
                        : ""
                });
                counter++;
            }
        }

        return result;
    }

    // get mToken's chainId's token's status
    function getAcceptTokenInfo(
        address mToken,
        uint chainId,
        address token
    ) public view returns (TokenInfoDetail memory) {
        return acceptTokenInfos[mToken][chainId][token];
    }

    // update token's stake and withdraw status
    function updateTokenStatus(
        address _mToken,
        uint _chainId,
        address _token,
        bool _stakePaused,
        bool _withdrawPaused,
        uint _minDepositAmount
    ) public onlyRole(DEFAULT_ADMIN_ROLE) {
        TokenInfoDetail storage tokenInfoDetail = acceptTokenInfos[_mToken][
            _chainId
        ][_token];

        // only registered
        _validate(tokenInfoDetail.registered, 13);

        tokenInfoDetail.stakePaused = _stakePaused;
        tokenInfoDetail.withdrawPaused = _withdrawPaused;
        tokenInfoDetail.minDepositAmount = _minDepositAmount;

        emit TokenStatusChange(
            _mToken,
            _chainId,
            _token,
            _stakePaused,
            _withdrawPaused,
            _minDepositAmount
        );
    }

    function receiveXCM(
        bytes memory message,
        bytes32 guid
    )
        external
        whenNotPaused
        whenNotStakePaused
        onlyRole(REMOTE_CHAIN_STAKE_ROLE)
        returns (bool success)
    {
        (
            uint chainId,
            address mToken,
            address stakeToken,
            uint stakeTokenAmount,
            uint8 remoteChainDecimals,
            address shareReceiver
        ) = abi.decode(
                message,
                (uint, address, address, uint256, uint8, address)
            );

        _remoteChainStake(
            mToken,
            chainId,
            stakeToken,
            stakeTokenAmount,
            shareReceiver,
            guid,
            remoteChainDecimals
        );

        return true;
    }
}
