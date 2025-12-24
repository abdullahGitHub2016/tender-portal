<?php

// @formatter:off
// phpcs:ignoreFile
/**
 * A helper file for your Eloquent Models
 * Copy the phpDocs from this file to the correct Model,
 * And remove them from this file, to prevent double declarations.
 *
 * @author Barry vd. Heuvel <barryvdh@gmail.com>
 */


namespace App\Models{
/**
 * @property int $id
 * @property int $tender_id
 * @property int $user_id
 * @property numeric $quoted_amount
 * @property string $document_path
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \App\Models\Tender $tender
 * @method static \Database\Factories\BidFactory factory($count = null, $state = [])
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Bid newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Bid newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Bid query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Bid whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Bid whereDocumentPath($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Bid whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Bid whereQuotedAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Bid whereTenderId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Bid whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Bid whereUserId($value)
 */
	class Bid extends \Eloquent {}
}

namespace App\Models{
/**
 * @property int $id
 * @property string $tender_no
 * @property string $title
 * @property string $description
 * @property string $closing_date
 * @property string $status
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Bid> $bids
 * @property-read int|null $bids_count
 * @method static \Database\Factories\TenderFactory factory($count = null, $state = [])
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Tender newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Tender newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Tender query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Tender whereClosingDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Tender whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Tender whereDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Tender whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Tender whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Tender whereTenderNo($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Tender whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Tender whereUpdatedAt($value)
 */
	class Tender extends \Eloquent {}
}

namespace App\Models{
/**
 * @property int $id
 * @property string $name
 * @property string $email
 * @property \Illuminate\Support\Carbon|null $email_verified_at
 * @property string $password
 * @property string|null $remember_token
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \Illuminate\Notifications\DatabaseNotificationCollection<int, \Illuminate\Notifications\DatabaseNotification> $notifications
 * @property-read int|null $notifications_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \Spatie\Permission\Models\Permission> $permissions
 * @property-read int|null $permissions_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \Spatie\Permission\Models\Role> $roles
 * @property-read int|null $roles_count
 * @method static \Database\Factories\UserFactory factory($count = null, $state = [])
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User permission($permissions, $without = false)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User role($roles, $guard = null, $without = false)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User whereEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User whereEmailVerifiedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User wherePassword($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User whereRememberToken($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User withoutPermission($permissions)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User withoutRole($roles, $guard = null)
 */
	class User extends \Eloquent {}
}

